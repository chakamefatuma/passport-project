import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { ProductService } from '../share/product.services';
import { Productes } from '../share/productes';

@Component({
  selector: 'app-product-form',
  templateUrl: './product-form.component.html',
  styleUrls: ['./product-form.component.css']
})
export class ProductFormComponent implements OnInit {
  idValue: string;
  product: Productes;
  form_data: FormData;

  productFrom = new FormGroup({
    name: new FormControl(''),
    detail: new FormControl(''),
    price: new FormControl(''),
    image: new FormControl(''),
  });
  constructor(private productServices: ProductService, private route: ActivatedRoute, private navRouter: Router) {
    this.idValue = this.route.snapshot.paramMap.get("id")

    if (this.idValue != '0') {
      this.productServices.getProduct(this.idValue).subscribe(product => {
        this.product = product;
        console.log(this.product);
        this.productFrom = new FormGroup({
          name: new FormControl(this.product.data.name),
          detail: new FormControl(this.product.data.detail),
          price: new FormControl(this.product.data.price),
          image: new FormControl(this.product.data.image),
        });

      });

    }
  }

  ngOnInit() {
  }

  onSubmit(productFrom: FormGroup) {
    console.log('formgroup: ', productFrom.value);
    if (this.idValue != '0') {
      console.log(this.idValue);
      console.log('vao edit');

      this.productServices.updateProduct(productFrom, this.idValue).subscribe(reponse => {
        console.log(reponse);
        this.navRouter.navigate(['product']);
      });
    } else {
      console.log('vao create');

      this.productServices.createProduct(productFrom).subscribe(reponse => {
        console.log(reponse);
        this.navRouter.navigate(['product']);
      });
    }
    //createOrUpdateProduct
  }
}
