import { Component, NgModule, OnInit } from '@angular/core';
import { MatCardModule, MatListModule } from '@angular/material';
import { Product } from '../share/product.model';
import { ProductService } from '../share/product.services';
import { Products } from '../share/products';

@NgModule({
  imports: [MatListModule, MatCardModule],
})

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {
  products: Products;
  productlist: Product[];
  constructor(private productService: ProductService) {
    this.productService.getProducts()
      .subscribe(products => {
        this.products = products;
        this.productlist = this.products.data;
      });
  }

  ngOnInit() {

  }
}
