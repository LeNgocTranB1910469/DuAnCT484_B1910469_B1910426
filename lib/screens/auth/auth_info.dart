

import 'package:flutter/material.dart';
import 'package:order_app/screens/Screens.dart';


class AuthInfo extends StatefulWidget {
  const AuthInfo({super.key});

  @override
  State<AuthInfo> createState() => _AuthInfoState();
}

class _AuthInfoState extends State<AuthInfo> {
  @override
  Widget build(BuildContext context) {
    ChangeNotifierProvider(create: (context) => AuthManager());
    return Consumer<AuthManager>(
      builder: (context, authManager, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: authManager.isAuth
              ? _buildLogout(authManager.authToken!.email)
              : FutureBuilder(
                  future: authManager.tryAutoLogin(),
                  builder: (context, snapshot) {
                    return snapshot.connectionState == ConnectionState.waiting
                        ? const SplashScreen()
                        : const AuthScreen();
                  },
                ),
        );
      },
    );
  }

  Widget _buildLogout(auth) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //appBar: detailsAppBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lacay.png'),
                ),
              ),
            ),
            // Text(
            //   auth,
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 28,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                margin: EdgeInsets.only(right: 20, top: 20, left: 20),
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => {
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 98, 77),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return HomeScreen();
                                      },
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.home),
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 98, 77),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      // return UserProductsScreen();
                                      return OrdersScreen();
                                    },
                                  ),
                                );
                              },
                              icon: const Icon(Icons.shopping_cart),
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Order",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 98, 77),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      // return UserProductsScreen();
                                      return UserProductsScreen();
                                    },
                                  ),
                                );
                              },
                              icon: const Icon(Icons.add),
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Product",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 98, 77),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                context.read<AuthManager>().logout();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return WelcomeScreen();
                                    },
                                  ),
                                );
                              },
                              icon: const Icon(Icons.logout),
                              color: Colors.white,
                            ),
                            SizedBox(width: 18),
                            Text(
                              "Log out",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavBar(),
    );
  }
}
