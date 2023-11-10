class AllCustomerModel {
  final String title;
  final String subtitle;

  AllCustomerModel({required this.title, required this.subtitle});
}

List<AllCustomerModel> allCustomers = [
  AllCustomerModel(
    title: 'عبد الله محمد',
    subtitle: 'تمتلك الشركة وأداؤها جيد جدًا.',
  ),
  AllCustomerModel(
    title: 'محمد علي حسين',
    subtitle: 'متوفر في الشركة وأداؤه ممتاز.',
  ),
  AllCustomerModel(
    title: 'أحمد يوسف عمر',
    subtitle: 'تمتلك الشركة وأداؤها ممتاز.',
  ),
  // Add more instances as needed
];
