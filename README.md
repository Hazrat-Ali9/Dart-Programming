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

## Constructors

Constructors are special methods used for initializing objects. Dart supports both default and named constructors. Let's extend the previous example to include named constructors:

```dart
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  Animal.namedConstructor(this.name) : age = 0;

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  Dog.namedConstructor(String name, String breed)
      : breed = breed,
        super.namedConstructor(name);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $breed');
  }
}

void main() {
  var myDog = Dog('Buddy', 3, 'Golden Retriever');

  var anotherDog = Dog.namedConstructor('Max', 'Labrador');

  myDog.showDetails();
  anotherDog.showDetails();
}
```

Here, we've added named constructors `namedConstructor` to both the `Animal` and `Dog` classes. This allows for alternative ways to construct objects.

## Inheritance

Inheritance is a fundamental OOP concept that allows a class to inherit properties and methods from another class. The `extends` keyword in Dart is used to implement inheritance. Let's extend our example further:

```dart
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  Animal.namedConstructor(this.name) : age = 0;

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  Dog.namedConstructor(String name, String breed)
      : breed = breed,
        super.namedConstructor(name);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $breed');
  }
}

class Cat extends Animal {
  bool hasStripes;

  Cat(String name, int age, this.hasStripes) : super(name, age);

  void makeSound() {
    print('Cat meows');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Has Stripes: $hasStripes');
  }
}

void main() {
  var myDog = Dog('Buddy', 3, 'Golden Retriever');
  var myCat = Cat('Whiskers', 2, true);

  myDog.showDetails();
  myCat.showDetails();
}
```

In this extension, we've introduced a new class `Cat` that also extends `Animal`. The `Cat` class has its own properties and methods, and it overrides the `makeSound` method inherited from `Animal`.



