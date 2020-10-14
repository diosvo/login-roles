import { Component, OnInit } from '@angular/core';
import { JwtService } from 'src/app/services/jwt.service';
import { AuthService } from 'src/app/services/auth.service';
import { UserModelServer } from 'src/app/model/user.model';
import { Role } from 'src/app/model/role.model';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  isLoggedIn: Boolean
  currentUser: UserModelServer

  constructor(private token: JwtService, private authService: AuthService) { }

  ngOnInit(): void {
    this.isLoggedIn = this.token.isLoggedIn()
    this.authService.user.subscribe(x => this.currentUser = x)
  }

  logout() {
    this.authService.logout()
  }
  
  get isAdmin() {
    return this.currentUser && this.currentUser.role === Role.Admin;
  }

  get isCustomer() {
    return this.currentUser && this.currentUser.role === Role.Customer;
  }
}