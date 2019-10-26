export class Product {
    id: number;
    name: string;
    detail: string;
    price: string;
    image: string;

    constructor(id: number, name: string, detail: string, price: string, image: string) {
        this.id = id;
        this.name = name;
        this.detail = detail;
        this.price = price;
        this.image = image;
    }
}