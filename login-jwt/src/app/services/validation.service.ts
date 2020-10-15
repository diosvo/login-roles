import { Injectable } from '@angular/core';
import { FormGroup, AbstractControl, AsyncValidatorFn } from '@angular/forms';
import { HttpClient } from '@angular/common/http';

import { map, switchMap } from 'rxjs/operators';
import { timer, Observable } from 'rxjs';

import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})

export class ValidationService {
  
  private SERVER_URL = environment.SERVER_URL

  constructor(private http: HttpClient) { }

  // Matching password
  passwordMatchValidator(password: string, confirmPassword: string) {
    return (formGroup: FormGroup) => {
      const passwordControl = formGroup.controls[password];
      const confirmPasswordControl = formGroup.controls[confirmPassword];

      if (!passwordControl || !confirmPasswordControl) {
        return null;
      }

      if (
        confirmPasswordControl.errors &&
        !confirmPasswordControl.errors.passwordMismatch
      ) {
        return null;
      }

      if (passwordControl.value !== confirmPasswordControl.value) {
        confirmPasswordControl.setErrors({ passwordMismatch: true });
      } else {
        confirmPasswordControl.setErrors(null);
      }
    };
  }

  // Check existed email
  searchEmail(email) {
    return timer(2000)
      .pipe(
        switchMap(() => this.http.get(this.SERVER_URL + '/users/validate/' + email)),
      );
  }

  emailValidate(): AsyncValidatorFn {
    return (control: AbstractControl): Observable<{ [key: string]: any } | null> => {
      return this.searchEmail(control.value)
        .pipe(
          map((res: { message: string, status: boolean }) => {
            if (res.status) {
              return { emailTaken: true };
            }
            return null;
          })
        );
    };
  }

}