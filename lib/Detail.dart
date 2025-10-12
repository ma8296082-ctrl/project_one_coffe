import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  String selectedSize = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios, size: 28),
                  Text(
                    'Detail',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite_border, size: 28),
                ],
              ),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/coffe.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cappucino',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'with Chocolate',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          SizedBox(width: 4),
                          Text(
                            '4.8',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 4),
                          Text('(230)', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/bean.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/milk.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: 20),

              Text(
                'Size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeComponenet(
                    size: 'S',
                    isSelected: selectedSize == 'S',
                    select: () {
                      setState(() {
                        selectedSize = "S";
                      });
                    },
                  ),
                  SizeComponenet(
                    size: 'M',
                    isSelected: selectedSize == 'M',
                    select: () {
                      setState(() {
                        selectedSize = "M";
                      });
                    },
                  ),
                  SizeComponenet(
                    size: 'L',
                    isSelected: selectedSize == 'L',
                    select: () {
                      setState(() {
                        selectedSize = "L";
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 100),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price', style: TextStyle(color: Colors.grey)),
                      Text(
                        '\$ 4.53',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 253, 125, 79),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 16,
                      ),
                    ),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SizeComponenet extends StatelessWidget {
  final String size;
  final bool isSelected;
  final void Function() select;
  const SizeComponenet({
    super.key,
    required this.size,
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
          color: isSelected ? Color.fromRGBO(255, 245, 238, 1) : Colors.white,
          border: Border.all(
            color: isSelected
                ? Color.fromRGBO(198, 124, 78, 1)
                : Color.fromRGBO(222, 222, 222, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        width: 100,
        height: 45,
        child: Text(
          size,
          style: TextStyle(
            fontSize: 18,
            color: isSelected
                ? Color.fromRGBO(198, 124, 78, 1)
                : Color.fromRGBO(34, 34, 34, 1),
          ),
        ),
      ),
    );
  }
}
