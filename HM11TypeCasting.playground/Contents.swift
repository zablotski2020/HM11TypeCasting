// Заблоцкий Илья Д/З №11

import UIKit
import Foundation

/*
 1. Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.
 Распечатайте содержимое коллекции.
 
 2. Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.
 Повторите то же самое для вещественных чисел, строк и булевых значений.
 
 3. Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и
 булевых значений.  Выведите крассиво на консоль пары ключ/значения для всех элементов коллекции.
 
 4. Создайте переменную total типа Double, равную 0.  Переберите все значения словаря, и добавьте значение
 каждого целого и вещественного числа к значению вашей переменной.
 Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно true,
 либо вычтите 3, если оно false.  Напечатайте значение total.
 
 5. Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные
 числа. Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число,
 и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */

// №1
var arr = [Any]()

arr.append(1.01)
arr.append(2.02)
arr.append(3.03)
arr.append(25)
arr.append(12)
arr.append("Swift")
arr.append("Xcode")
arr.append(true)
arr.append(false)

print("№1\n\(arr)\n")

// №2
print("№2")
for value in arr{
    var fractionOfNumb = ""

    switch value {
    case is Double:
        fractionOfNumb = "ДРОБНОЕ ЧИСЛО: \(value)"
    case is Int:
        fractionOfNumb = "ЦЕЛОЕ ЧИСЛО: \(value)"
    case is String:
        fractionOfNumb = "СТРОКА: \(value)"
    case is Bool:
        fractionOfNumb = "ЛОГИЧЕСКОЕ: \(value)"
    default:
        break
    }
    
    print(fractionOfNumb)
}

// №3
print("\n№3")
var dictionary = [String: Any]()
dictionary["СТРОКА"] = "Swift"
dictionary["ЦЕЛОЕ ЧИСЛО"] = 25
dictionary["ДРОБНОЕ ЧИСЛО"] = 1.01
dictionary["ЛОГИЧЕСКОЕ"] = true

for (key, value) in dictionary {
    print("\(value): \(key)")
}

// №4
print("\n№4")
var total: Double = 0.0

for (_, value) in dictionary {
    
    switch value {
    case is Int:
        total += Double(value as! Int)
    case is Double:
        total += value as! Double
    case is String:
        total += 1
    case is Bool:
        total += value as! Bool ? 2 : -3
    default:
        break
    }
}

print("TotalFor4 = \(total)")

//5
print("\n№5")
total = 0

for (_, value) in dictionary {
    
    switch value {
    case is Int:
        total += Double(value as! Int)
    case is Double:
        total += value as! Double
    case is String:
        if let value = value as? Double {
            total += value
        }
    default:
        break
    }
}

print("TotalFor5 = \(total)")


