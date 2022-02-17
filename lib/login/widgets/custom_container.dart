import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key, required this.children}) : super(key: key);
  final List <Widget> children;
  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromARGB(111, 255, 255, 255),
      ),
      // height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width / 1,
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: widget.children,
      ),

    );
  }
}
