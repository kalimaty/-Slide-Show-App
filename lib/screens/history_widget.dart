import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:slide_show/models/topicModel.dart';
import 'package:slide_show/providers/slide_provider.dart';

class HistoryWidget extends StatelessWidget {
  final Topic topic;

  HistoryWidget({required this.topic});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SlideProvider(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 10, 205, 250),
          elevation: 4,
          centerTitle: true,
          title: Text('History'),
        ),
        body: Consumer<SlideProvider>(
          builder: (context, slideProvider, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: DataTable(
                decoration: BoxDecoration(color: Colors.indigo),
                sortAscending: true,
                columnSpacing: 1.0,
                dataRowMaxHeight: double.infinity,
                dataRowMinHeight: 50.0,
                dividerThickness: 1,
                border: TableBorder.all(color: Colors.grey.shade100, width: 2),
                columns: [
                  DataColumn(
                      label: Text(
                    'Word',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    '         Image',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    '   Audio',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  )),
                ],
                rows: topic.imagePaths.map((imagePath) {
                  final imageName =
                      topic.imageNames[topic.imagePaths.indexOf(imagePath)];
                  return DataRow(
                    cells: [
                      DataCell(Text(
                        '${imageName}   ' '. ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )),
                      DataCell(Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(imagePath),
                      )),
                      DataCell(IconButton(
                        onPressed: () {
                          slideProvider.speak(imageName);
                        },
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            size: 50,
                            color: Colors.white,
                            slideProvider.isPlaying(imageName)
                                ? Icons.pause
                                : IconlyLight.play,
                          ),
                        ),
                      )
                          // IconButton(
                          //   icon: Icon(Icons.play_arrow),
                          //   onPressed: () {
                          //     slideProvider.speak(imageName);
                          //   },
                          // ),
                          ),
                    ],
                  );
                }).toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
