import 'package:order_app/screens/Screens.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: detailsAppBar(context),
      resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.green[200],
      body: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 163, 7, 7).withOpacity(0.5),
                  Color.fromARGB(255, 226, 131, 48).withOpacity(0.9),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                stops: const [0, 1],
              ),
            ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextSpan(text: ALL THE BEST BEVERIDGE IN THE WORD!),
            Container(
              height: 600,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/clother.jpg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                // margin: EdgeInsets.only(right: 20, top: 20, left: 20),
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[100],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(4, 1),
                              blurRadius: 50,
                              color: Color.fromARGB(255, 250, 246, 246),
                            )
                          ]),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(left: 20, right: 20, top: 1),
                    //   alignment: Alignment.center,
                    //   //height: 50,
                    //   decoration: BoxDecoration(
                    //     // color: Colors.green,
                    //     borderRadius: BorderRadius.circular(50),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(10.0),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: <Widget>[
                    //         // IconButton(
                    //         //   onPressed: () {},
                    //         //   icon: const Icon(Icons.help),
                    //         //   color: Colors.white,
                    //         // ),
                    //         SizedBox(width: 10),
                    //         Text(
                    //           "CLOTHER xin chào!!!",
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 30,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    // Container(
                    //   margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    //   alignment: Alignment.center,
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     color: Colors.green,
                    //     borderRadius: BorderRadius.circular(50),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(10.0),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: <Widget>[
                    //         IconButton(
                    //           onPressed: () {},
                    //           icon: const Icon(Icons.help),
                    //           color: Colors.white,
                    //         ),
                    //         SizedBox(width: 10),
                    //         Text(
                    //           "Help",
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    SizedBox(width: 8),
                    GestureDetector(
                      //onTap: () => {},
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AuthScreen();
                            },
                          ),
                        ),
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        alignment: Alignment.center,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 98, 77),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
