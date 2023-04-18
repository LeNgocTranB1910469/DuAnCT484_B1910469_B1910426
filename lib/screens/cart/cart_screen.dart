import 'package:order_app/screens/Screens.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // final cart = CartManager();
    final cart = context.watch<CartManager>();

    return Scaffold(
      //appBar: detailsAppBar(context),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 237, 98, 77),
        title: const Text('Your Cart'),
      ),
      body: Column(
        children: <Widget>[
          buildCartSummary(cart, context),
          const SizedBox(height: 10),
          Expanded(
            child: buildCartDetails(cart),
          )
        ],
      ),

      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget buildCartDetails(CartManager cart) {
    return ListView(
      children: cart.productEntries
          .map(
            (entry) => CartItemCard(
              productId: entry.key,
              cardItem: entry.value,
            ),
          )
          .toList(),
    );
  }

  Widget buildCartSummary(CartManager cart, BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Total',
              style: TextStyle(fontSize: 20),
            ),
            const Spacer(),
            Chip(
              label: Text(
                '${cart.totalAmount.toStringAsFixed(3)}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Color.fromARGB(255, 237, 98, 77),
            ),
            TextButton(
              onPressed: cart.totalAmount <= 0
                ? null
                : () {
                print('Product ordered successfully');
              },
              style: TextButton.styleFrom(
                  textStyle: TextStyle(color: Theme.of(context).primaryColor)),
              child: const Text('ORDER NOW'),
            ),
          ],
        ),
      ),
    );
  }
}
