import 'package:advert/add_product/add_product.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 97, 227),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'HomeView',
          style: TextStyle(color: Colors.black45),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddProduct(),
                    ),
                  );
                },
                icon: const Icon(Icons.publish_rounded),
                label: const Text("Start"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
