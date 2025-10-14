import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _DetailState();
}

class _DetailState extends State<Order> {
  List categories = ['Deliver', 'Pick Up'];
  String selectedCat = '';
  String selectedSize = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.arrow_back_ios, size: 28),
                    ),
                    Text(
                      'Order',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(240, 240, 240, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

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

                SizedBox(height: 35),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Address',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),

                    Text(
                      'Jl. Kpg Sutoyo',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                          style: TextStyle(
                            color: Color.fromRGBO(128, 128, 128, 1),
                          ),
                        ),
                        SizedBox(width: 4),
                      ],
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color.fromARGB(255, 207, 207, 207),
                              width: 1,
                            ),
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.edit_note_outlined),
                              Text('Edit Address'),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          alignment: Alignment.center,

                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color.fromARGB(255, 207, 207, 207),
                              width: 1,
                            ),
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.note_add_outlined),
                              Text('Add Note'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Container(
                  alignment: Alignment.center,

                  width: double.infinity,
                  height: 1.5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 231, 231, 231),
                      width: 1,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/coffe.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          'Cappucino',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),

                        Text(
                          'with Chocolate',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 150, 150, 150),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            '1', // رقم ثابت
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                SizedBox(height: 20),

                Container(
                  alignment: Alignment.center,

                  width: double.infinity,
                  height: 1.5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 231, 231, 231),
                      width: 1,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  alignment: Alignment.center,

                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color.fromARGB(255, 231, 231, 231),
                      width: 1,
                    ),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/Discount.png',
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '1 Discount is applied',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price', style: TextStyle(fontSize: 18)),
                        Text(
                          '\$ 4.53',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Fee', style: TextStyle(fontSize: 18)),
                        Text(
                          '\$ 1.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,

                      width: double.infinity,
                      height: 1.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 231, 231, 231),
                          width: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment', style: TextStyle(fontSize: 18)),
                        Text(
                          '\$ 5.53',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 235, 235, 235),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(249, 249, 249, 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),

                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/moneys.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      alignment: Alignment.center,

                                      width: 60,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(198, 124, 78, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        'Cash',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),

                                    Text(
                                      '\$ 5.53',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                    size: 23,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Order(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(
                                    198,
                                    124,
                                    78,
                                    1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 100,
                                    vertical: 30,
                                  ),
                                ),

                                child: Text(
                                  'Order',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
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
        width: 220,
        height: 50,
        child: Text(
          category,
          style: TextStyle(
            fontSize: 18,
            color: isSelected
                ? Color.fromRGBO(255, 255, 255, 1)
                : Color.fromRGBO(34, 34, 34, 1),
          ),
        ),
      ),
    );
  }
}
