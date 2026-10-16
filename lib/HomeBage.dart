import 'package:flutter/material.dart';
import 'package:task2/movies.dart';

import 'movielib.dart';

class Homebage extends StatefulWidget {
  @override
  State<Homebage> createState() => HomebageState();
}

class HomebageState extends State<Homebage> {
  bool isGrid = false;
  String query = "";
  void search(String value) {
    setState(() {
      query = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Movie> filtered_Movies = movies.where((n) {
      return n.title.contains(query);
    }).toList();
    Widget Gridbuilder() {
      return Center(
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              onChanged: search,
              decoration: const InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.4,
                ),
                itemBuilder: (BuildContext, int index) {
                  return Moviescort(movie: filtered_Movies[index]);
                },
                itemCount: filtered_Movies.length,
              ),
            ),
          ],
        ),
      );
    }

    Widget listbuilder() {
      return Column(
        children: [
          TextField(
            onChanged: search,
            decoration: const InputDecoration(
              hintText: 'Search movies...',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtered_Movies.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 500,

                  child: Moviescort(movie: filtered_Movies[index]),
                );
              },
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie Library",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        clipBehavior: Clip.antiAlias,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            icon: Icon(isGrid ? Icons.grid_view : Icons.view_list),
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
          ),
        ],
      ),

      body: isGrid ? Gridbuilder() : listbuilder(),
    );
  }
}
