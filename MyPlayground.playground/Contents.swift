
class Car {
    // Инкапсуляция
    private var horsePower: Int
    private var engine: String
    internal var mileage: Int

    init(horsePower: Int, engine: String, mileage: Int) {
        self.horsePower = horsePower
        self.engine = engine
        self.mileage = mileage
    }

    func drive() {
        print("Машина едет")
        mileage += 100
    }

    func showMileage() {
        print(mileage)
    }
}

let car = Car(horsePower: 200, engine: "v8", mileage: 200000)

car.showMileage()
car.drive()
print("-------------------------")
// Наследование
class Truck: Car {
    var height: Int

    init(horsePower: Int, engine: String, mileage: Int, height: Int) {
        self.height = height
        super.init(horsePower: 100, engine: "v8", mileage: 3000)
    }

    override func drive() {
        super.drive()
        print("Грузовик едет")
        mileage += 1000
    }
}

let truck = Truck(horsePower: 2000, engine: "v8", mileage: 30000, height: 2)

truck.showMileage()
truck.drive()
truck.showMileage()
