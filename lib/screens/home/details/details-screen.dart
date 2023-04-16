import 'package:order_app/models/Product.dart';
import 'package:order_app/screens/Screens.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = '/product-detail';
  final Product product;
  const DetailsScreen(
    this.product, {
    super.key,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 205, 206, 228),
      appBar: detailsAppBar(context),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(widget.product.image))),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: <Widget>[
                  // Text('${widget.product.title}'),
                  SizedBox(
                    height: 5,
                  ),
                  // TitlePriceRating(
                  //   name: widget.product.title,
                  //   numberOfReview: 24,
                  //   rating: 4,
                  //   price: widget.product.price,
                  //   description: widget.product,

                  //   // onRatingChanged: (){},
                  // ),
                  SizedBox(
                    height: 50,
                  ),

                  Text(
                    "Áo Thun Teelab Local Brand Unisex Studio TS174 ",
                    style: TextStyle(height: 1.5, fontSize: 18),
                  ),
                  SizedBox(height: 115),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 98, 77),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  final cart = context.read<CartManager>();
                                  cart.addItem(widget.product);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return CartScreen();
                                      },
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.shopping_bag),
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Thêm vào giỏ hàng",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
