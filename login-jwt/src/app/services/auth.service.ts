import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { BehaviorSubject, Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { UserModelServer } from '../model/user.model';

@Injectable({
  providedIn: 'root'
})

export class AuthService {

  private SERVER_URL = environment.SERVER_URL;

  private userSubject: BehaviorSubject<UserModelServer>;
  public user: Observable<UserModelServer>;

  constructor(private http: HttpClient,
    private router: Router) {
    this.userSubject = new BehaviorSubject<UserModelServer>(null);
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
  }

  logout() {
    localStorage.removeItem('current-user')
    localStorage.removeItem('x-access-token')
    this.router.navigate(['/'])
  }
}