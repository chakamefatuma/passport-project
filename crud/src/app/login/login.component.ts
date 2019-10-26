import { Component, NgModule, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { MatFormFieldModule } from '@angular/material';
import { Router } from '@angular/router';
import { AuthService } from '../share/auth.service';
@NgModule({
  imports: [MatFormFieldModule],
})
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  profileForm = new FormGroup({
    username: new FormControl('hungbuit@gmail.com'),
    password: new FormControl('123456'),
    grant_type: new FormControl('password'),
    client_id: new FormControl(2),
    client_secret: new FormControl('ivuRPUFLg0UzxQqqIfVJ32wkp8hAURFb8PIpukX1'),
  });

  constructor(private auth: AuthService, private router: Router) { }

  ngOnInit() {
  }

  onSubmit(loginform: FormGroup) {
    //console.log('form data', loginform.value);
    this.auth.getAccessToken(loginform).subscribe();

    // Navigate to the login page with extras
    this.router.navigate(['product']);
  }
}
