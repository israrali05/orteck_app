import 'package:orteck_app/utils/app_images.dart';

class TransactionModel {
  final String img;
  final String text;

  TransactionModel({required this.img, required this.text});
}

List<TransactionModel> transactionModel = [
  TransactionModel(img: AppImages.transactionGallery, text: "Photo"),
  TransactionModel(img: AppImages.transactionGallery, text: "Before/After"),
  TransactionModel(img: AppImages.transactionNotes, text: "Note"),
  TransactionModel(img: AppImages.transactionNotes, text: "Survey"),
  TransactionModel(img: AppImages.transactionNotes, text: "Sales Order"),
  TransactionModel(img: AppImages.tranactionCard, text: "Payment"),
  TransactionModel(img: AppImages.transactionInvoice, text: "Invoice"),
  TransactionModel(img: AppImages.transactionInvoice, text: "Return")
];
