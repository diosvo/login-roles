import { HttpInterceptor, HttpRequest, HttpHandler, HttpEvent } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

import { AuthService } from '../services/auth.service';

@Injectable()
export class JwtInterceptor implements HttpInterceptor {
    constructor(private authService: AuthService) { }

    intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        const user = this.authService.userValue
        const isLoggedIn = user && user.accessToken

        if (isLoggedIn) {
            req = req.clone({
                setHeaders: { Authorization: `Bearer ${user.accessToken}` }
            });
        }
        return next.handle(req)
    }
}