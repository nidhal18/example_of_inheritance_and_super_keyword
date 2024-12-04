// parent class
class Animal {
  String name;

  Animal(this.name);

  void makesound() {
    print('$name is making a sound');
  }
}

// Child class that inherits from Animal
class Dog extends Animal {
  String breed;

  // contsructor for dog that calls the animal constructor using 'super'
  Dog(super.name, this.breed);

  // overridding the method from the parents class
  @override
  void makesound() {
    // call the parent class's makesound method using 'super'
    super.makesound();
    print('$name is barking!');
  }

  void showbreed() {
    print('$name is a $breed.');
  }
}

void main() {
  // create a dog object
  Dog myDog = Dog('buddy', 'golden retriever');

  // call methods
  myDog.makesound(); // calss the overridden method
  myDog.showbreed(); // calls the method specific to dog
}
