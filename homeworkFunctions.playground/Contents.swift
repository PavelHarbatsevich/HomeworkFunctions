import UIKit

// 1 Написать функцию, которая:
//- Будет просто выводить в консоль ”Hello, world!”
//.
//- Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
//должен быть следующим - printHi(“Misha”)).
//- Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”.

func printHi(name: String = "Misha") -> String {
   return "Hello, \(name)"
}

print(printHi())

//2. Написать функцию, которая принимает две строки и возвращает сумму количества
//символов двух строк.

func sumString(firstString: String, secondString: String) -> Int {
    return firstString.count + secondString.count
    }
    
print(sumString(firstString: "new", secondString: "film"))

// 3. Написать функцию, которая выводит в консоль квадрат переданного числа.

func square(x: Double) -> Double {
    return pow(x, 2)
}

print(square(x: 2.0))

//4. Создать функции, которые будут суммировать, вычитать, умножать и делить числа
//sum(num1:num2:).

func add(sumOne: Int, sumTwo: Int) -> Int {
    return sumOne + sumTwo
}

func subtract(a: Double, b:Double) -> Double {
    return a - b
}

func multiplay(a: Float, b:Float) -> Float {
    return a * b
}

func divide(a: Double, b:Double) -> Double {
    return a / b
}

print(add(sumOne: 10, sumTwo: 5))
print(subtract(a: 2.45, b: 1.12))
print(multiplay(a: 5.9, b: 3.89))
print(divide(a: 3.89, b: 2.2))

//5. Создать функцию, которая принимает параметры и вычисляет площадь круга.

func areaOfACircle(pi: Double, radius: Double) -> Double {
    return pi * pow(radius, 2)
}

areaOfACircle(pi: 3.14, radius: 5.0)

//6. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
//строку с описанием времени суток.

func nowIsNight(isNight: Bool) -> String {
    if isNight {
        return "now night"
    } else {
        return "now day"
    }
}

print(nowIsNight(isNight: true))

//7. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
//true, если оно простое, и false, если сложное.

func simpleNumberOrNot(number: Int) -> Bool {
    if number < 2 || number > 100 {
        return false
    } else  {
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
}

print(simpleNumberOrNot(number: 7))

//8. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
//возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
//осень).

func timeIsAYear(numberOfMonth: Int) {
   
    switch numberOfMonth {
    case 1...2,12:
        print("it's a winter")
    case 3...5:
        print("it's a spring")
    case 6...8:
        print("it's a summer")
    case 9...11:
        print("it's an authum")
    default:
        print("we don't have number")
    }
}


timeIsAYear(numberOfMonth: 7)


// 9. Создать функцию, которая считает факториал введённого числа.

func factorial(number: Int) -> Int {
   
    if number == 0 {
    return 1
    } else {
        return number * factorial(number: number - 1)
    }
}

let sumFact = factorial(number: 5)

print("factorial = \(sumFact)")

//10  Создать функцию, которая выводит все числа последовательности Фибоначчи до
//введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8

func fibonachi(index: Int) {
    if index <= 0 {
        return
    }
        var firstValue = 0
        var secondValue = 1
        
        print(firstValue, terminator: ", ")
        
        if index > 1 {
            print(secondValue, terminator: ", ")
            for i in 2..<index {
                let new = firstValue + secondValue
                print(new, terminator: ", ")
                firstValue = secondValue
                secondValue = new
            }
        }
         print("")
    }
    
    print(fibonachi(index: 7))
    
    
    //11 Создать функцию, которая считает сумму цифр четырехзначного числа,
    //переданного в параметры функции
    
    func sumNumber(number: Int) -> Int  {
        var sum = 0
        var count = number
        
        while count > 0 {
            sum += count % 10
            count /= 10
        }
        return sum
    }
    
    print(sumNumber(number: 1234))
    

