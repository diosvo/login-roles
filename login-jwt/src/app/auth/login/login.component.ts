import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { first } from 'rxjs/operators';

import { AuthService } from 'src/app/services/auth.service';
import { JwtService } from 'src/app/services/jwt.service';
import { Role } from 'src/app/model/role.model';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})

export class LoginComponent implements OnInit {

  loading = false
  returnUrl: string

  loginForm = this.fb.group({
      email: ["", [Validators.required]],
      password: ["", [Validators.required]],
    })

  constructor(private fb: FormBuilder,
    private authService: AuthService,
    private router: Router,
    private token: JwtService,
    private route: ActivatedRoute) {
    if (this.authService.userValue) this.router.navigate(['/home'])
  }

  ngOnInit(): void {
    let isLoggedIn = this.token.isLoggedIn()
    if (isLoggedIn) {
      this.returnUrl = this.route.snapshot.queryParams['returnUrl'] || '/home';
    }
  }

  onSubmit() {
    if (this.loginForm.invalid) {
      return
    }

    this.loading = true
    this.authService.loginUser(this.email.value, this.password.value)
      .pipe(first())
      .subscribe(res => {
        if (res.role === Role.Admin) {
          this.router.navigate(['/admin'])
        } else if (res.role === Role.Customer) {
          this.router.navigate(['/home'])
        }
      }, error => {
        this.loading = false
      })

    this.loginForm.reset();
  }

  get email() {
    return this.loginForm.get('email')
  }

  get password() {
    return this.loginForm.get('password')
  }
}