import { Component, OnInit } from '@angular/core';

import { ProductModelServer, ServerResponse } from 'src/app/model/product.model';
import { ProductsService } from 'src/app/services/products.service';
import { UserModelServer } from 'src/app/model/user.model';
import { JwtService } from 'src/app/services/jwt.service';
import { AuthService } from 'src/app/services/auth.service';
import { Role } from 'src/app/model/role.model';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss']
})
export class AdminComponent implements OnInit {
  isLoggedIn: Boolean
  products: ProductModelServer[];
  currentUser: UserModelServer

  constructor(private productService: ProductsService, private token: JwtService, private authService: AuthService) { }

  ngOnInit(): void {
    this.isLoggedIn = this.token.isLoggedIn()
    this.authService.user.subscribe(x => this.currentUser = x)

    this.productService.getAllProducts().subscribe((prods: ServerResponse) => {
      this.products = prods.products
    })

    this.isAdmin
  }

  get isAdmin() {
    return this.currentUser && this.currentUser.role === Role.Admin;
  }
}
