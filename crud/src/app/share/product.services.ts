import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { environment } from 'src/environments/environment';
import { MessageService } from './message.service';
import { Productes } from './productes';
import { Products } from './products';
import { TokenVar } from './token';

const httpOptions = {
    headers: new HttpHeaders({
        'Content-Type': 'application/json',
        'Authorization': `${localStorage.getItem(TokenVar.token_type)} ${localStorage.getItem(TokenVar.access_token)}`
    })
};

@Injectable({
    providedIn: 'root',
})
export class ProductService {
    env = environment;

    constructor(private http: HttpClient, private messageService: MessageService) { }

    getProducts(): Observable<Products> {
        return this.http.get<Products>(this.env.apiUrl + 'api/products', httpOptions)
            .pipe(
                catchError(this.handleError)
            );
    }

    getProduct(id: string): Observable<Productes> {
        return this.http.get<Productes>(this.env.apiUrl + 'api/products/' + id, httpOptions)
            .pipe(
                catchError(this.handleError)
            );
    }

    createProduct(ProductFrom: FormGroup): Observable<Productes> {
        return this.http.post<Productes>(this.env.apiUrl + 'api/products', ProductFrom.value, httpOptions)
            .pipe(
                catchError(this.handleError)
            );
    }

    updateProduct(ProductFrom: FormGroup, id: string): Observable<Productes> {
        return this.http.put<Productes>(this.env.apiUrl + 'api/products/' + id, ProductFrom.value, httpOptions)
            .pipe(
                catchError(this.handleError)
            );
    }

    private handleError(error: HttpErrorResponse) {
        if (error.error instanceof ErrorEvent) {
            // A client-side or network error occurred. Handle it accordingly.
            console.error('An error occurred:', error.error.message);
        } else {
            // The backend returned an unsuccessful response code.
            // The response body may contain clues as to what went wrong,
            console.error(
                `Backend returned code ${error.status}, ` +
                `body was: ${error.error}`);
        }
        // return an observable with a user-facing error message
        return throwError(
            'Something bad happened; please try again later.');
    };

    private log(message: string) {
        this.messageService.add(`HeroService: ${message}`);
    }
}