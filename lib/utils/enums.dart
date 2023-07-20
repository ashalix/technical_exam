import 'package:flutter/material.dart';

enum AppBarOptions {
  home,
  newArrival,
  shop,
  lastCollection,
  men,
  women;

  String getLabel() {
    switch (this) {
      case AppBarOptions.home:
        return 'HOME';
      case AppBarOptions.newArrival:
        return 'NEW ARRIVAL';
      case AppBarOptions.shop:
        return 'SHOP';
      case AppBarOptions.lastCollection:
        return 'LAST COLLECTION';
      case AppBarOptions.men:
        return 'MEN';
      case AppBarOptions.women:
        return 'WOMEN';
    }
  }
}

enum LoginSignup {
  help,
  joinUs,
  signIn;

  String getLabel() {
    switch (this) {
      case LoginSignup.help:
        return 'Help';
      case LoginSignup.joinUs:
        return 'Join Us';
      case LoginSignup.signIn:
        return 'Sign in';
    }
  }
}

enum Categories {
  sweatshirts,
  hoodies,
  pair;

  String getLabel() {
    switch (this) {
      case Categories.sweatshirts:
        return 'Sweatshirts';
      case Categories.hoodies:
        return 'Hoodies';
      case Categories.pair:
        return 'Pairs';
    }
  }
}

enum Contacts {
  address,
  number,
  email;

  List<dynamic> getInfo() {
    switch (this) {
      case Contacts.address:
        return [
          Icons.send,
          'Blk. 123, Lot 45, 67 St., Barangay Eight, Nine City, Philippines',
        ];
      case Contacts.number:
        return [
          Icons.mobile_off_sharp,
          '09123456789',
        ];
      case Contacts.email:
        return [
          Icons.email,
          '12345@gmail.com',
        ];
    }
  }
}

enum SocialMedia {
  facebook,
  pinterest,
  instagram;

  IconData getIcon() {
    switch (this) {
      case SocialMedia.facebook:
        return Icons.facebook;
      case SocialMedia.pinterest:
        return Icons.person;
      case SocialMedia.instagram:
        return Icons.camera_alt;
    }
  }
}
