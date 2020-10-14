import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

import { environment } from 'src/environments/environment';
import { UserModelServer } from '../model/user.model';

import { BehaviorSubject, Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})

export class AuthService {

  private SERVER_URL = environment.SERVER_URL;

  private userSubject: BehaviorSubject<UserModelServer>;
  public user: Observable<UserModelServer>

  constructor(private http: HttpClient,
    private router: Router) {
    this.userSubject = new BehaviorSubject<UserModelServer>(JSON.parse(localStorage.getItem('current-user')));
    this.user = this.userSubject.asObservable();
  }

  public get userValue(): UserModelServer {
    return this.userSubject.value;
  }

  registerUser(formData: any) {
    const { firstname, lastname, email, password, cfpassword } = formData;

    return this.http.post(`${this.SERVER_URL}/auth/register`,
      { email, password, firstname, lastname },
      { responseType: 'text' })
  }

  loginUser(email: string, password: string) {
    return this.http.post<any>(`${this.SERVER_URL}/auth/login`, { email, password })
      .pipe(
        map((res: UserModelServer) => {
          if (res && res.accessToken) {
            localStorage.setItem('x-access-token', res.accessToken)
            localStorage.setItem('current-user', JSON.stringify(res))
            this.userSubject.next(res)
          }
          return res
        })
      )
  }

  logout() {
    localStorage.removeItem('current-user')
    localStorage.removeItem('x-access-token')
    this.userSubject.next(null)
    this.router.navigate(['/'])
  }
}