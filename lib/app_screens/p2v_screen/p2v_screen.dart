import 'package:flutter/material.dart';

class P2VScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('P2V Screen'),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two items per row
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 3 / 4, // Aspect ratio for each grid item
          ),
          itemCount: 6, // Number of items in the grid
          itemBuilder: (context, index) {
            return ExcursionItem(
              imageUrl: 'assets/bus.jpg', // Placeholder image
              details: 'The explore your places join us.',
              price: 'Price : FCFA ${(index + 50) * 10}', // Example price
            );
          },
        ),
      ),
    );
  }
}

class ExcursionItem extends StatelessWidget {
  final String imageUrl;
  final String details;
  final String price;

  const ExcursionItem({
    required this.imageUrl,
    required this.details,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
            child: Image.asset(
              imageUrl,
              height: 120.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              details,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
