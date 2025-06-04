class Vehicle {
    String code = "8809";
    String brand = "Tesla";
    double averageVelocity = 25;

    void transport() {
        print("I am moving");
    }
}

class Animal {

}

class Car extends Vehicle {
    double  _areaOfBox;

    // Car({required this._areaOfBox});

    Car.basic() : _areaOfBox = 0;

    void startCruise() {
        print("Cruise control is on");
    }

    void reportAreaOfBox() {
        print("The area of the box of this car is ${this._areaOfBox}L");
    }

    double get areaOfBox => _areaOfBox;

    set areaOfBox(double areaOfBox) {
        if(areaOfBox < 0) {
            _areaOfBox = 0;
        } else {
            _areaOfBox = areaOfBox;
        }
    }

    @override
    void transport() {
        print("I am a car");
    }
}

void main() {
    Vehicle vehicle = Vehicle();
    // vehicle.transport();
    // print(vehicle.code);
    Car bmw = Car.basic();
    bmw.areaOfBox = -100;
    print(bmw.areaOfBox);


    TwitterUser user1 = TwitterUser
                    .byEmail("ali@gmail.com");
    TwitterUser user2 = TwitterUser
                    .byNumber("091123325");

    bmw.transport();                                              
}


class TwitterUser {
    String email;
    String phoneNumber;

    TwitterUser.byEmail(this.email) 
        : phoneNumber = "0";

    TwitterUser.byNumber(this.phoneNumber)
        : email = "test@gmail.com";       
}