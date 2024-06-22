class Car {
  //Class Properties
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;

//Constructor
  Car(this.brand, this.model, this.year, this.milesDriven){
    numberOfCars++;
  }

//Adding the miles with previous miles.
  void drive(double miles) {
    milesDriven += miles;
  }

//Return the total miles that car has driven.
  double getMilesDriven() {
    return milesDriven;
  }

//Return the brand of the car.
  String getBrand() {
    return brand;
  }

//Return the model of the car.
  String getModel() {
    return model;
  }

//Return the buying year of the car.
  int getYear() {
    return year;
  }

//Return the age of the car.
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car('Mercedes-Benz', 'G-Class(W463)', 2018, 60000);
  Car car2 = Car('Bugatti', 'Veyron 16.4', 2015, 80000);
  Car car3 = Car('Lamborghini', 'Revuelto', 2020, 40000);

  car1.drive(87.56);
  car2.drive(150.43);
  car3.drive(100.00);

//Print all the properties of Car1, Car2 and Car3.
  print("Car 1: ");
  print('Brand: ${car1.getBrand()}, Model: ${car1.getModel()}, Year: ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()} years');
  print("Car 2: ");
  print('Brand: ${car2.getBrand()}, Model: ${car2.getModel()}, Year: ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()} years');
  print("Car 3: ");
  print('Brand: ${car3.getBrand()}, Model: ${car3.getModel()}, Year: ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()} years');

  print('Total number of cars created: ${Car.numberOfCars}');
}