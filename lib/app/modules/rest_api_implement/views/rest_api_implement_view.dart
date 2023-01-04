import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rest_api_implement_controller.dart';

class RestApiImplementView extends GetView<RestApiImplementController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RestApiImplementController());
    return Scaffold(
        appBar: AppBar(
          title: Text('RestApiImplementView'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.addData(title: "Getx", content: "Boleh");
            controller.getData();
          },
          child: Icon(Icons.add),
        ),
        body: Obx(() {
          if (controller.notes.isNotEmpty) {
            return _itemList();
          } else {
            return Center(
              child: Text('No Data Found'),
            );
          }
        }));
  }

  Widget _itemList() {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${controller.notes[index]['title']}",
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        controller.notes[index]['content'],
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.deleteData(controller.notes[index]['id']);
                          controller.getData();
                        },
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          controller.updateData(
                              content: "Hai",
                              id: controller.notes[index]['id']);
                          controller.getData();
                        },
                        icon: Icon(Icons.update),
                      ),
                    ],
                  )
                ],
              ));
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: controller.notes.length);
  }
}
