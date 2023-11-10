import 'dart:ffi';

import 'package:orteck_app/utils/app_images.dart';

class ProductModel {
  final String img;
  final String productName;
  final double price;
  final int stock;

  ProductModel(
      {required this.img,
      required this.productName,
      required this.price,
      required this.stock});
}

List<ProductModel> productlist = [
  ProductModel(
      img: AppImages.productBiscuit1,
      productName: "Gum 3 PCS",
      price: 0.22676,
      stock: 54),
  ProductModel(
      img: AppImages.productBiscuit2,
      productName: "Gum 2 PCS",
      price: 0.12676,
      stock: 23),
  ProductModel(
      img: AppImages.productBiscuit3,
      productName: "Biscuites 4 PCS",
      price: 0.72676,
      stock: 54),
  ProductModel(
      img: AppImages.productBiscuit4,
      productName: "Biscuits 6 PCS",
      price: 0.52676,
      stock: 46),
  ProductModel(
      img: AppImages.productBiscuit5,
      productName: "Biscuits 8 PCS",
      price: 0.42676,
      stock: 57),
  ProductModel(
      img: AppImages.productBiscuit6,
      productName: "Gum 10 PCS",
      price: 0.92676,
      stock: 77),
];
