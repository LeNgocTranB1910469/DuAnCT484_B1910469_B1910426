import 'package:order_app/screens/Screens.dart';
AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "CLOTHER",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
    backgroundColor: Color.fromARGB(255, 237, 98, 77),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {},
      ),
    ],
  );
}
