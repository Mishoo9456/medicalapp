import 'package:flutter/material.dart';

class HorizontalDateList extends StatefulWidget {
  @override
  _HorizontalDateListState createState() => _HorizontalDateListState();
}

class _HorizontalDateListState extends State<HorizontalDateList> {
  final List<DateTime> dates = List.generate(
    30,
        (index) => DateTime.now().add(Duration(days: index)),
  ); // Generate 30 days from today.

  int selectedIndex = -1; // Track the index of the selected container.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selectable Date List")),
      body: Center(
        child: SizedBox(
          height: 80, // Set the container height
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dates.length,
            itemBuilder: (context, index) {
              final date = dates[index];
              final isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index; // Update the selected index.
                  });
                },
                child: Container(
                  width: 100, // Fixed width for each container
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blueAccent : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: isSelected ? 2 : 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${date.day}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                      Text(
                        "${date.weekday == 7 ? "Sunday" : ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"][date.weekday - 1]}",
                        style: TextStyle(
                          fontSize: 16,
                          color: isSelected ? Colors.white70 : Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}