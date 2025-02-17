# Hazrat Ali

# Dart Programming For Learning ( Basic Level )

# Object-Oriented Programming (OOP) in Dart

Object-oriented programming (OOP) is a programming paradigm that structures code using objects, which are instances of classes. Dart fully supports OOP principles, and this section provides a comprehensive exploration of key OOP concepts in Dart.

## Classes and Objects

In Dart, a class is a blueprint for creating objects. Objects are instances of classes and encapsulate data and behavior. Let's expand on the basic example:

```dart
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $breed');
  }
}

void main() {
  // Creating an instance of the Dog class
  var myDog = Dog('Buddy', 3, 'Golden Retriever');

  // Accessing properties
  print('Name: ${myDog.name}, Age: ${myDog.age}, Breed: ${myDog.breed}');

  // Invoking methods
  myDog.makeSound();
  myDog.showDetails();
}
```

In this example, we have an `Animal` class with properties `name` and `age` and a method `makeSound`. The `Dog` class extends `Animal` and introduces an additional property `breed` and a method `showDetails`.
