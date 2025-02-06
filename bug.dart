```dart
class MyClass {
  final String name;

  MyClass(this.name);

  void printName() {
    print('My name is: $name'); 
  }
}

void main() {
  var myObject = MyClass('John');
  myObject.printName(); // This works fine

  // Now let's try to create a list of MyClass objects using a list literal
  List<MyClass> myList = [
    MyClass('Alice'),
    MyClass('Bob'),
  ];

  //And if we try to access this list
  print(myList[0].name); //This also works fine

  //However, if we try to add elements to this list after creation using the add method,
  myList.add(MyClass('Charlie'));
  print(myList[2].name); // This will throw an error if MyClass is not created correctly
}
```