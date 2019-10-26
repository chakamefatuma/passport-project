import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Observable } from 'rxjs';
import { catchError, map, mapTo } from 'rxjs/operators';
import { environment } from 'src/environments/environment';
import { Token, TokenVar } from './token';

@Injectable({ providedIn: 'root' })
export class AuthService {
    env = environment;
    constructor(private http: HttpClient) {
    }

    getAccessToken(param: FormGroup): Observable<any> {

        const headers = new HttpHeaders({
            'Content-Type': 'application/json',
        });

        console.log(param.value);
        return this.http.post<Token>(`${this.env.apiUrl}oauth/token`, param.value, { headers: headers })
            .pipe(
                map(tokens => {
                    this.setToken(tokens.access_token);
                    this.setTokenType(tokens.token_type);
                    this.setTokenRefresh(tokens.refresh_token);
                    return Object.assign(new Token(tokens.token_type, tokens.expires_in, tokens.access_token, tokens.refresh_token), tokens);
                }),
                catchError(this.handleError)
            );
    }

    setToken(token: string) {
        localStorage.setItem(TokenVar.access_token, token);
        console.log(token);
        console.log(localStorage.getItem(TokenVar.access_token));
    }

    setTokenType(tokenType: string) {
        localStorage.setItem(TokenVar.token_type, tokenType);
    }

    setTokenRefresh(tokenRefresh: string) {
        localStorage.setItem(TokenVar.refresh_token, tokenRefresh);
    }

    refreshToken(): Observable<any> {

        const httpOptions = {
            headers: new HttpHeaders({
                'Content-Type': 'application/json',
                'Authorization': `${localStorage.getItem(TokenVar.token_type)} ${localStorage.getItem(TokenVar.access_token)}`
            })
        };

        return this.http.post<Token>(`${this.env.apiUrl}oauth/token/refresh`, { refreshToken: localStorage.getItem(TokenVar.refresh_token) }, httpOptions).pipe(
            mapTo(tokens => Object.assign(new Token(tokens.token_type, tokens.expires_in, tokens.access_token, tokens.refresh_token), tokens)),
            catchError(this.handleError)
        );
    }

    removeTokens() {
        localStorage.removeItem(TokenVar.access_token);
        localStorage.removeItem(TokenVar.expires_in);
        localStorage.removeItem(TokenVar.refresh_token);
        localStorage.removeItem(TokenVar.token_type);
    }

    private handleError(error: Response | any) {
        const body = '';
        console.log('error: ', error);
        return Observable.throw(body);
    }
}