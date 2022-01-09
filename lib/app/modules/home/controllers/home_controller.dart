import 'package:get/get.dart';
// import 'package:shake/shake.dart';

class HomeController extends GetxController {
  RxList todoList = [].obs;
  RxList completedTodoList = [].obs;
  RxString todoItem = ''.obs;
  RxBool swipDown = false.obs;
  RxString deletedTodoItem = "".obs;
  String inputString = "";

  insertToTodoList() {
    todoList.add(inputString);
  }

  updateTodoList(oldIndex, newIndex) {
    final index = newIndex > oldIndex ? newIndex - 1 : newIndex;
    todoItem.value = todoList.removeAt(oldIndex);
    todoList.insert(index, todoItem.value);
  }

  deleteFromTodoList(index) {
    // completedTodoList.insert(index, todoList[index]);
    todoList.remove(todoList[index]);
  }

  updateCompletedTodoList(index) {
    completedTodoList.add(todoList[index]);
    todoList.remove(todoList[index]);
  }

  clearTodoList() {
    todoList.clear();
  }

  undoTodoListItem(index) {
    todoList.insert(index, todoItem);
  }

  // ShakeDetector detector = ShakeDetector.autoStart(
  //   onPhoneShake: () {},
  // );

  @override
  void onInit() {
    // detector.startListening();
    super.onInit();
    completedTodoList.clear();
    todoList.add("Swipe Left to Delete");
    todoList.add("Swipe Right to Completed");
    todoList.add("Tap and hold to pic me up or Down");
    todoList.add("Pull down to create an item");
    todoList.add("Pull upto Clear");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
