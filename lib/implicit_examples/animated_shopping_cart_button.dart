import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isExpaned = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpaned = !isExpaned;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            width: isExpaned ? 200.0 : 120.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: isExpaned ? Colors.orange : Colors.blue,
              borderRadius: isExpaned
                  ? BorderRadius.circular(100.0)
                  : BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: isExpaned,
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
                isExpaned
                    ? const FittedBox(
                        child: Text(
                        "Add to cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ))
                    : const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
