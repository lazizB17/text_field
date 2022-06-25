import 'package:flutter/material.dart';

class RailpageBlock extends StatefulWidget {
  static const id = "/railpage_block";

  const RailpageBlock({Key? key}) : super(key: key);

  @override
  State<RailpageBlock> createState() => _RailpageBlockState();
}

class _RailpageBlockState extends State<RailpageBlock> {
  int _selectedIndex = 0;
  int _selectedMenu = 0;
  List<String> titles = ["All", "Inspiration", "Favorites", "Popular"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 38, 41, 1),
      body: Row(
        children: [
          // #side_navigation_bar
          NavigationRail(
            labelType: NavigationRailLabelType.none,
            groupAlignment: -1,
            selectedIndex: _selectedIndex,
            backgroundColor: const Color.fromRGBO(40, 41, 47, 1),
            destinations: const [
              NavigationRailDestination(
                padding: EdgeInsets.only(bottom: 80),
                icon: Padding(
                  padding:  EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                  ),
                ),
                label: Text("Avatar"),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.only(bottom: 60),
                icon: Icon(
                  Icons.tune_rounded,
                  size: 30,
                  color: Color.fromRGBO(149, 147, 149, 1),
                ),
                selectedIcon: Icon(
                  Icons.tune_rounded,
                  size: 30,
                  color: Colors.amber,
                ),
                label: Text("regular"),
              ),
            ],
            // trailing: Column(
            //   children: [
            //     categoriesItem(index: 0, title: titles[0], onPressed: () {}),
            //     categoriesItem(index: 1, title: titles[1], onPressed: () {}),
            //     categoriesItem(index: 2, title: titles[2], onPressed: () {}),
            //     categoriesItem(index: 3, title: titles[3], onPressed: () {}),
            //   ],
            // ),
            trailing: Column(
              children: List.generate(titles.length, (index) => categoriesItem(index: index, title: titles[index], onPressed: () {}),),
            ),
          ),

          // #body
          Column(
            children: [
              Expanded(
                child: Container(
                  width: 200,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  width: 200,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


  Widget categoriesItem({required int index, required String title, required void Function()? onPressed}) {
    return MaterialButton(
        onPressed: () {
          setState(() {
            _selectedMenu = index;
            print(_selectedMenu);
          });
        },
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: const StadiumBorder(),
        child: _selectedMenu != index ? RotatedBox(
          quarterTurns: 3,
          child: Text(
            title,
            style: const TextStyle(
              color: Color.fromRGBO(149, 147, 149, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ) :  RotatedBox(
          quarterTurns: 3,
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.orangeAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
            ),
          ),
        )
    );
  }
}



