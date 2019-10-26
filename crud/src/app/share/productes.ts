import { Product } from './product.model';

export class Productes {
    success: boolean;
    data: Product;
    message: string;

    constructor(success: boolean, data: Product, message: string) {
        this.success = success;
        this.data = data;
        this.message = message;
    }
}