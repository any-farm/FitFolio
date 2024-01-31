import 'package:flutter/material.dart';

import '../base/base_appbar.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(appBarTitle: 'Photo Screen'),
        // body: Center(child: const BottomSheetExample()),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Text('탭 영역'),
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 150.0,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  child: Text('타이틀'),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  // color: Colors.blue,
                                  onPressed: () {},
                                  color: Colors.blue[700],
                                  icon: const Icon(Icons.bookmark),
                                ),
                              ),
                            ],
                          ),
                          Text('시간'),
                          Text('컨디션'),
                          Text('내용'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
