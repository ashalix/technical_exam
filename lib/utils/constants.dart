import 'dart:html';

import 'package:flutter/material.dart';

// screen sizes / heights
int? windowsWidth = window.screen?.width;
const appBarHeight = 70.0;
const space50 = 50.0;
const space20 = 20.0;

// get image path
String _getPath(String filename) => 'assets/images/$filename.png';

String get appLogo => _getPath(_logo);

String get bgImage => _getPath(_backgroundImage);

String get designImageHori => _getPath(_scrapImageHori);

String get designImageVert => _getPath(_scrapImageVert);

String get drawerIcon => _getPath(_drawer);

String get categorySampleImage => _getPath(_categoryImage);

// images - filenames
const _logo = 'cat_logo';
const _backgroundImage = 'landing_bg';
const _scrapImageHori = 'bg_image_hori';
const _scrapImageVert = 'bg_image_vert';
const _drawer = 'list_icon';
const _categoryImage = 'category_sample_photo';

// text keys
const searchKey = 'Search';
const shopNowKey = 'Shop Now';
const saleKey = 'SALE';
const productNameKey = 'Comfy Sweatshirt';
const productSellerKey = 'Manila, Philippines';
const productDiscountKey = '15% OFF';
const moreKey = 'More';
const collectionKey = 'Collection';
const informationKey = 'Information';
const readMoreKey = 'READ MORE';
const applyKey = 'APPLY';

// reusable widgets
const horizontalSpace20 = SizedBox(width: space20);
const horizontalSpace50 = SizedBox(width: space50);
const verticalSpace50 = SizedBox(height: space50);
const verticalSpace20 = SizedBox(height: space20);
const bold = FontWeight.bold;

// colors
const whiteColor = Colors.white;
const redColor = Colors.red;
const blueColor = Colors.blue;

const dividerVert = '|';
const tabBars = [
  'LATEST',
  'HOT JOBS',
  'NOTIFY ME',
  'GROW WITH US',
];

// message in category view
const categoryMessage = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    'Ut enim ad minim veniam, quis nostrud exercitation ullamco'
    'laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit'
    'in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
    'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia'
    'deserunt mollit anim id est laborum. Deus nos diligit.';
