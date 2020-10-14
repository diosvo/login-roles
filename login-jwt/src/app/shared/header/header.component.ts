import { Component, OnInit } from '@angular/core';
import { JwtService } from 'src/app/services/jwt.service';
import { AuthService } from 'src/app/services/auth.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  isLoggedIn: Boolean

  constructor(private token: JwtService, private authService: AuthService) { }

  ngOnInit(): void {
    this.isLoggedIn = this.token.isLoggedIn()
  }

  logout() {
    this.authService.logout()
  }
}