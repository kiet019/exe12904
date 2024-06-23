import { SocialAuthService } from "angularx-social-login";
import { SocialUser } from "angularx-social-login";
import { GoogleLoginProvider } from "angularx-social-login";
import { Component, Injectable, OnInit } from '@angular/core';
import { ActivatedRoute, Route, Router, RouterModule } from '@angular/router';
import { Subscription } from 'rxjs';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { FormControl, FormGroup } from '@angular/forms';
import { UserService } from '../../service/account/user.service';
import Swal from 'sweetalert2';
interface LoginResponse {
  id: string;
  authToken: string;
}
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
@Injectable()


export class LoginComponent implements OnInit {
  public user: SocialUser = new SocialUser;
  private subscription: Subscription;
  brandNew: boolean;
  errors: string;
  isRequesting: boolean;
  submitted: boolean = false;
  public resetPasswordEmail!: string;
  public isValidEmail!: boolean
  credentials: Credentials = { email: '', password: '' };
  constructor(public authService: SocialAuthService, public router: Router, private activatedRoute: ActivatedRoute, public http: HttpClient, public userService: UserService) {
  }
  private loggedIn = false;
  isLoggedIn() {
    return this.loggedIn;
  }
  public newForm: FormGroup;
  ngOnInit() {
    this.newForm = new FormGroup({
      userName: new FormControl(null),
      passWord: new FormControl(null),
    })
    this.subscription = this.activatedRoute.queryParams.subscribe(
      (param: any) => {
        this.brandNew = param['brandNew'];
        this.credentials.email = param['email'];
      });
      // this.authService.authState.subscribe(user => {
      //   if (user) {
      //     this.user = user;

         
      //         const body = {
      //           email: user.email,
      //           userName: user.firstName + user.lastName,
      //           firstName: user.firstName,
      //           lastName: user.lastName,
      //           password: "123123",
      //           address: "HN",
      //           phoneNumber: "",
      //           role: "User"
      //         };

      //         this.http.post(environment.URL_API + "Users/login-google", body).subscribe(
      //           postRes => {
                 
                 
      //           },
      //           postErr => {
      //             console.error('Login failed', postErr);
      //           }
      //         );
            
      //       getErr => {
      //         console.error('Failed to retrieve product likes', getErr);
      //       }
        
      //   }
      // });
      }
      signInWithGoogle = async() => {
   await this.authService.signIn(GoogleLoginProvider.PROVIDER_ID);
   await this.authService.authState.subscribe(user => {
    if (user) {
      this.user = user;
          const body = {
            email: user.email,
            userName: user.firstName + user.lastName,
            firstName: user.firstName,
            lastName: user.lastName,
            password: "123123",
            address: "HN",
            phoneNumber: "",
            role: "User"
          };
          localStorage.setItem("idUser",user.id);
          localStorage.setItem("auth_token",user.authToken); 
        
          this.http.post<LoginResponse>(`${environment.URL_API}Users/login-google`, body).subscribe(
            postRes => {
              localStorage.setItem("idUser",postRes.id);
              localStorage.setItem("auth_token",postRes.authToken); 
              window.location.href = "/";
                console.log(postRes)
            },
            postErr => {
              console.error('Login failed', postErr);
            }
          );
        getErr => {
          console.error('Failed to retrieve product likes', getErr);
        }
    
    }
  });

  }

  public signOut(): void {
    this.authService.signOut();
  }
  onLogOut() {
    localStorage.removeItem('auth_token');
    this.loggedIn = false
  }
  onLogin() {
    this.router.navigate(['/register']);
  }
  onSubmit = (data) => {
    let form = new FormData();
    form.append('UserName', data.userName);
    form.append('Password', data.passWord);
    this.submitted = true;
    this.isRequesting = true;
    this.errors = '';
    this.userService.login(data.userName, data.passWord)
  }
  checkValidEmail(event: string) {
    const value = event;
    const pattern = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,3}$/;
    this.isValidEmail = pattern.test(value);
    return this.isValidEmail;
  }
  confirmToSend() {
    if (this.checkValidEmail(this.resetPasswordEmail)) {
      console.log(this.resetPasswordEmail);

      this.userService.sendResetPasswordLink(this.resetPasswordEmail)
        .subscribe({
          next: (res) => {
            this.resetPasswordEmail = "";
            const buttonRef = document.getElementById("closeBtn");
            buttonRef.click();
            Swal.fire("Gửi yêu cầu thiết lập lại mật khẩu thành công", '', 'success')
          },
          error: (err) => {
            Swal.fire("Gửi yêu cầu thiết lập lại mật khẩu thất bại", '', 'error')
          }
        })
    }
  }
}
export interface Credentials {
  email: string;
  password: string;
}
