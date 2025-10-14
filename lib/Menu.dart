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
    final List<Map<String, dynamic>> coffees = [
      {
        'image': 'assets/images/coffe.png',
        'name': 'Cappuccino',
        'desc': 'With Chocolate',
        'price': '\$4.53',
        'rating': '4.8',
      },
      {
        'image': 'assets/images/1.png',
        'name': 'Latte',
        'desc': 'With Chocolate',
        'price': '\$4.53',
        'rating': '4.8',
      },
      {
        'image': 'assets/images/2.png',
        'name': 'Americano',
        'desc': 'With Chocolate',
        'price': '\$4.53',
        'rating': '4.8',
      },
      {
        'image': 'assets/images/3.png',
        'name': 'Macchiato',
        'desc': 'With Chocolate',
        'price': '\$4.53',
        'rating': '4.8',
      },
    ];

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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 40),

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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
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
                    SizedBox(height: 30),

                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: coffees.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (context, index) {
                        final coffee = coffees[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(187, 243, 243, 243),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(coffee['image']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            coffee['rating'],
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 6),

                                Expanded(
                                  flex: 1,

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        coffee['name'],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        coffee['desc'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            coffee['price'],
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                198,
                                                124,
                                                78,
                                                1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
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
