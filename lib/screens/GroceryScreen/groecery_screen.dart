import 'package:flutter/material.dart';

class GroceryScreen extends StatefulWidget {
  @override
  _GroceryScreenState createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  late ColorScheme _colorScheme;
  late ThemeData _themeData;
  List<String> _categories = [
    'Fruits',
    'Vegetables',
    'Dairy',
    'Meats',
    'Bakery'
  ];
  List<String> _banners = [
    'https://www.shutterstock.com/image-photo/grocery-shopping-cart-260nw-363658811.jpg',
    'https://static.vecteezy.com/system/resources/previews/001/254/657/non_2x/grocery-store-online-banner-template-with-phone-groceries-and-foliage-elements-vector.jpg'
  ];
  List<String> _products = [
    'https://www.shutterstock.com/image-photo/daily-grocery-products-kept-on-260nw-1716077194.jpg',
    'https://media.istockphoto.com/id/171302954/photo/groceries.jpg?s=612x612&w=0&k=20&c=D3MmhT5DafwimcYyxCYXqXMxr1W25wZnyUf4PF1RYw8='
  ];

  @override
  void initState() {
    super.initState();
    _colorScheme = ColorScheme(
      primary: Color(0xFF008000),
      primaryVariant: Color(0xFF006000),
      secondary: Color(0xFFF5F5F5),
      secondaryVariant: Color(0xFFE0E0E0),
      surface: Color(0xFFFFFFFF),
      background: Color(0xFFFFFFFF),
      error: Color(0xFFB00020),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFF000000),
      onSurface: Color(0xFF000000),
      onBackground: Color(0xFF000000),
      onError: Color(0xFFFFFFFF),
      brightness: Brightness.light,
    );
    _themeData = ThemeData(
      colorScheme: _colorScheme,
      fontFamily: 'Roboto',
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        headline3: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        headline5: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        bodyText2: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        caption: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
        overline: TextStyle(fontSize: 8, fontWeight: FontWeight.normal),
        button: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      theme: _themeData,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildAppBar(),
                _buildBannerCarousel(),
                _buildCategories(),
                // _buildSpecialFeatures(),
                // _buildProductListing(),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('Grocery App'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBannerCarousel() {
    return Container(
      height: 200,
      child: PageView.builder(
        itemCount: _banners.length,
        itemBuilder: (context, index) {
          return Image.network(
            _banners[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            child: Card(
              child: Center(
                child: Text(_categories[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
