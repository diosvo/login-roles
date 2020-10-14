import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { AuthService } from 'src/app/services/auth.service';
import { Router } from '@angular/router';
import { JwtService } from 'src/app/services/jwt.service';
import { BehaviorSubject } from 'rxjs';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  loginForm = this.fb.group(
    {
      email: ["", [Validators.required]],
      password: ["", [Validators.required]],
    }
  )

  constructor(private fb: FormBuilder,
    private authService: AuthService,
    private router: Router,
    private token: JwtService) {

    if (this.authService.userValue) this.router.navigate(['/'])
  }

  ngOnInit(): void {
    let isLoggedIn = this.token.isLoggedIn()
    if (isLoggedIn) {
      this.router.navigate(['/home'])
    }
  }

  onSubmit() {
    if (this.loginForm.invalid) {
      return
    }

    this.authService.loginUser(this.email.value, this.password.value).subscribe(
      res => {
          this.router.navigate(['/home'])

        let token = res.accessToken
        localStorage.setItem('x-access-token', token)
        localStorage.setItem('current-user', JSON.stringify(res))

      }, err => console.log(err)
    )

    this.loginForm.reset();
  }

  get email() {
    return this.loginForm.get('email')
  }

  get password() {
    return this.loginForm.get('password')
  }

}
