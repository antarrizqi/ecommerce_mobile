import 'package:flutter/material.dart';

class InputAddress extends StatefulWidget {
  const InputAddress({super.key});

  @override
  State<InputAddress> createState() => _InputAddressState();
}

class _InputAddressState extends State<InputAddress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        children: [
          buildInput('delivery address', '10th avenue,leki,laggot state'),
          buildInput('numnber we can call', '088212972981'),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xffFFA451)),
                    foregroundColor: Color(0xffFFA451),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('pay on delivery'),
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildInput(String title, String hintText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16),
          TextFormField(decoration: InputDecoration(hintText: hintText)),
        ],
      ),
    );
  }
}
