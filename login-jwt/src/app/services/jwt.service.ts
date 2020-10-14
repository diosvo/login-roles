import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class JwtService {

  constructor() { }

  setAccessToken(accessToken: string) {
    localStorage.setItem('x-access-token', accessToken)
  }

  setCurrentUser(user) {
    localStorage.setItem('current-user', JSON.stringify(user))
  }

  getUser() {
    localStorage.getItem('current-user')
  }

  isLoggedIn(): boolean {
    let token = localStorage.getItem('x-access-token')
    if (token) {
      return true
    }
    return false
  }
}
