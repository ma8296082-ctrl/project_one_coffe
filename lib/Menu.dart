import 'package:flutter/material.dart';
import 'package:project_one/Detail.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List categories = ['Cappuccino', 'Machiato', 'Latte', 'Americano'];
  String selectedCat = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Color.fromRGBO(43, 43, 43, 1),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(width: double.infinity, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          'Bilzen, Tanjungbalai',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/Image 1.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          hintText: 'Search coffee',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(211, 153, 153, 142),
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(66, 66, 66, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Image.asset(
                            'assets/images/search.png',
                            width: 18,
                            height: 18,
                          ),
                          suffixIcon: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 124, 78, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                              'assets/images/setting.png',
                              width: 18,
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Frame 8.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: categories.map((e) {
                      return CategoryComponenet(
                        category: e,
                        isSelected: selectedCat == e,
                        select: () {
                          setState(() {
                            selectedCat = e;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryComponenet extends StatelessWidget {
  final String category;
  final bool isSelected;
  final void Function() select;
  const CategoryComponenet({
    super.key,
    required this.category,
    required this.isSelected,
    required this.select,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: select,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected
              ? Color.fromRGBO(198, 124, 78, 1)
              : Color.fromRGBO(243, 243, 243, 1),
          border: Border.all(
            color: isSelected
                ? Color.fromRGBO(198, 124, 78, 1)
                : Color.fromRGBO(243, 243, 243, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        width: 150,
        height: 40,
        child: Text(
          category,
          style: TextStyle(
            fontSize: 15,
            color: isSelected
                ? Color.fromRGBO(255, 255, 255, 1)
                : Color.fromRGBO(34, 34, 34, 1),
          ),
        ),
      ),
    );
  }
}
