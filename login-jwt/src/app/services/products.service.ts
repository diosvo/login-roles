import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

import { environment } from 'src/environments/environment';
import { ServerResponse } from '../model/product.model';

@Injectable({
  providedIn: 'root'
})
export class ProductsService {
  private SERVER_URL = environment.SERVER_URL

  constructor(private http: HttpClient) { }

  getAllProducts(numberOfResults = 18): Observable<ServerResponse> {
    return this.http.get<ServerResponse>(this.SERVER_URL + '/products', {
      params: {
        limit: numberOfResults.toString()
      }
    })
  }
}