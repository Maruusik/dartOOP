import 'dart:io';

// Define an interface
abstract class Shape {
  void draw();
}

// Implement the Shape interface with Rectangle class
class Rectangle implements Shape {
  @override
  void draw() {
    print('Drawing a rectangle');
  }
}

// Base class
class Animal {
  void speak() {
    print('Animal speaks');
  }
}

// Subclass inheriting from Animal
class Dog extends Animal {
  @override
  void speak() {
    print('Dog barks');
  }
}

// Class to initialize instance with data from a file
class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  // Method to initialize data from a file
  void readDataFromFile(String filename) {
    File(filename).readAsString().then((String contents) {
      List<String> data = contents.split(',');
      name = data[0];
      age = int.parse(data[1]);
      print('Data read from file: Name - $name, Age - $age');
    });
  }
}

// Method demonstrating the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Using inheritance
  Dog dog = Dog();
  dog.speak(); // Output: Dog barks

  // Using interface
  Rectangle rectangle = Rectangle();
  rectangle.draw(); // Output: Drawing a rectangle

  // Initializing instance with data from a file
  var person = Person('', 0);
  person.readDataFromFile('data.txt');

  // Method demonstrating the use of a loop
  printNumbers(5); // Output: 1 2 3 4 5
}
