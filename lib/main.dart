import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Trial());
}

class Trial extends StatelessWidget {
  const Trial({super.key});

  final OutlineInputBorder border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 3,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(
            "Convert Anything",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "0.0",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.monetization_on),
                prefixIconColor: Colors.grey,
                filled: true,
                fillColor: Colors.white,
                hintText: "enter your amount here",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: border,
                enabledBorder: border,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(159, 50)),
                onPressed: () {
                  if (kDebugMode) {
                    print("convetrted");
                  }
                },
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
