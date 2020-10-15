import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})

export class JwtService {

  private SERVER_URL = environment.SERVER_URL

  constructor(private http: HttpClient) { }

  tokenStorage(accessToken: string, refreshToken: string) {
    localStorage.setItem('x-access-token', accessToken)
    localStorage.setItem('x-refresh-token', refreshToken)
  }

  getRefreshToken() {
    localStorage.getItem('x-refresh-token')
  }

  getNewAccessToken() {
    return this.http.post<any>(this.SERVER_URL + '/auth/refresh-token', {
      headers: {
        'x-refresh-token': this.getRefreshToken()
      }
    })
  }

  isLoggedIn(): boolean {
    let token = localStorage.getItem('x-access-token')
    if (token) {
      return true
    }
    return false
  }

  removeTokens() {
    localStorage.clear();
  }
}