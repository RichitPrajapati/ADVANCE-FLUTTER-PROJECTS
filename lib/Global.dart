class Global {
  static bool isIOS = false;
  static List name = [
    {
      "title": "Recommended for you",
    },
    {
      "title": "New & updated for you",
    },
    {
      "title": "Suggested for you",
    },
  ];
  static List Icons = [
    {
      'Image': "assets/Images/Paytm.png",
      'name': "paytm",
      "rating": "4.2 ⭐",
      'download': "10M+",
    },
    {
      'Image': "assets/Images/Amazon.png",
      'name': "Amazon ",
      "rating": "4.6 ⭐",
      'download': "15M+",
    },
    {
      'Image': "assets/Images/Flipkart.png",
      'name': "Flipkart ",
      "rating": "4.1 ⭐",
      'download': "57M+",
    },
    {
      'Image': "assets/Images/Meeso.png",
      'name': "Messho ",
      "rating": "4.8 ⭐",
      'download': "50M+",
    },
    {
      'Image': "assets/Images/Googlepay.png",
      'name': "Google Pay",
      "rating": "4.0 ⭐",
      'download': "5M+",
    },
  ];
  static List New = [
    {
      'Image':"assets/Images/Googlepay.png",
      'name': "Shopclues",
      "rating": "4.0 ⭐",
      'download': "5M+",
    }
  ];
}

class AppsSecond {
  String sname;
  // List listname;

  AppsSecond({
    required this.sname,
    // required this.listname,
  });
}

List<AppsSecond> appsList = <AppsSecond>[
  AppsSecond(
    sname: "Recommended for you",
  ),
  AppsSecond(
    sname: "New & updated apps",
  ),
  AppsSecond(
    sname: "Suggested for you",
  ),
  AppsSecond(
    sname: "Shoppings Apps",
  ),
];