import 'package:ecommerce_mobile/components/app+back_button.dart';
import 'package:ecommerce_mobile/features/cart/screen/input_address.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void showModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: InputAddress(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackButton(),
        title: Text(
          'my basket',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        backgroundColor: Color(0xffFFA451),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
        child: ListView(children: [buildItem()]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'total',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '60,000',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('checkout'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column buildItem() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFFFAEB),
              ),
              child: Image.asset(
                'assets/images/food.png',
                width: 65,
                height: 65,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'quinoa fruit salad',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text('2packs'),
                  Text(
                    'quinoa fruit salad',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Text(
              'Rp 100,000',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Divider(thickness: 0.5, color: Colors.black),
      ],
    );
  }
}
