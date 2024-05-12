import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kollegeapply/utils/constant/assets.dart';

class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  RxString searchQuery = ''.obs;

  List<String> allItems = [
    'JEE Main Syllabus 2024 (Out), New Syllabus PDF Download for Chem...',
    'IIT Main Syllabus 2023 (Out), New Syllabus PDF Download for Chem...',
    'NEET Main Syllabus 2023 (Out), New Syllabus PDF Download for Chem...',
    // Add other items here...
  ];

  // Computed property to get filtered items
  List<String> get filteredItems {
    if (searchQuery.isEmpty) {
      return allItems;
    } else {
      return allItems
          .where((item) =>
              item.toLowerCase().contains(searchQuery.value.toLowerCase()))
          .toList();
    }
  }

  // Method to update search query
  void updateSearchQuery(String query) {
    searchQuery.value = query;
    debugPrint(query);
  }

  @override
  void onClose() {
    super.onClose();
  }

  RxBool isVisible = true.obs;

  RxList<String> imagePaths = <String>[
    AssetUrl.carousel1,
    AssetUrl.carousel2,
    AssetUrl.carousel3,
    AssetUrl.carousel4,
    AssetUrl.carousel5,
  ].obs;
  RxList<String> imagePaths2 = <String>[
    AssetUrl.banner,
    AssetUrl.carousel1,
    AssetUrl.carousel2,
  ].obs;

  RxList<String> collegeTrades = <String>[
    'Management',
    'Engineering',
    'Medical',
    'Label',
    'Commerce',
    'Hotel Management',
    'Law'
  ].obs;
}
