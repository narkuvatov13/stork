import 'package:stork/features/Apps/Stork_Shop/data/models/category_model.dart';

class CategoryData {
  static final List<CategoryModel> categories = [
    CategoryModel(
      id: 1,
      title: 'Sut ve Kahvaltilik',
      subTitle: "Subtitle1",
      imagePath: 'assets/images/stork_images/categories/snacks.png',
    ),
    CategoryModel(
      id: 2,
      title: 'Icecekler',
      subTitle: "Subtitle2",
      imagePath: 'assets/images/stork_images/categories/snacks.png',
    ),
  ];
}
