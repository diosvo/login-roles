import { Component, OnInit } from '@angular/core';

import { ProductModelServer, ServerResponse } from 'src/app/model/product.model';
import { ProductsService } from 'src/app/services/products.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})

export class HomeComponent implements OnInit {
  products: ProductModelServer[];

  constructor(private productService: ProductsService) {
  }

  ngOnInit(): void {
    this.productService.getAllProducts().subscribe((prods: ServerResponse) => {
      this.products = prods.products
    })
  }
}
