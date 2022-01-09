import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('TODO'),
        centerTitle: true,
      ),
      body: Obx(
        () => GestureDetector(
          onVerticalDragDown: (details) {
            if (details.localPosition.dy > 10) {
              controller.swipDown.value = true;
            }
            ;
          },
          child: Column(
            children: [
              controller.swipDown.isTrue
                  ? Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        decoration:
                            InputDecoration(hintText: "Enter Your Todo"),
                        onChanged: (value) {
                          controller.inputString = value;
                        },
                        onEditingComplete: () {
                          controller.insertToTodoList();
                          controller.swipDown.value = false;
                        },
                      ),
                    )
                  : Container(),
              Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.3, 1],
                    colors: [Colors.red, Colors.yellowAccent],
                  ),
                ),
                child: ReorderableListView.builder(
                  itemCount: controller.todoList.length,
                  shrinkWrap: true,
                  onReorder: (oldIndex, newIndex) {
                    controller.updateTodoList(oldIndex, newIndex);
                  },
                  itemBuilder: (context, index) {
                    controller.todoItem.value = controller.todoList[index];
                    return Dismissible(
                      key: ValueKey(controller.todoList[index].toString()),
                      confirmDismiss: (DismissDirection direction) async {
                        if (direction == DismissDirection.startToEnd) {
                          await controller.updateCompletedTodoList(index);
                        } else if (direction == DismissDirection.endToStart) {
                          await controller.deleteFromTodoList(index);
                        } else if (direction == DismissDirection.up) {
                          await controller.clearTodoList();
                        }
                      },
                      background: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        color: Colors.blue,
                        child: Icon(
                          Icons.done,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      secondaryBackground: Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(left: 20),
                        color: Colors.red,
                        child: Icon(
                          Icons.delete,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      child: Card(
                        margin: EdgeInsets.all(0),
                        color: Colors.transparent,
                        child: ListTile(
                          key: ValueKey(controller.todoItem.value),
                          title: Text(
                            controller.todoList[index].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.completedTodoList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          controller.completedTodoList[index].toString(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
