//: [Previous](@previous)
/*:

 # Константы и переменныe,  простые значения.

*/
//:`let` создаёт константу, `var` создаёт переменную.

import Foundation

let thisIsConstant = "const"
var thisIsVariable = "var"

//: Значения переменных можно менять во время выполнения программ, а константы задаются только единожды — в момент присваивания.
thisIsVariable = "some new value"
//thisIsConstant = "если не закомментировать, то будет ошибка" // не сработает, посмотрите на сообщение об ошибке и закомментируйте эту строку

//: Переменным можно присваивать значения только того же типа, что и сама переменная.
//thisIsVariable = 42 // не сработает, посмотрите на сообщение об ошибке и закомментируйте эту строку
thisIsVariable = String(42) // а вот так сработает
print(thisIsVariable)

//: При задании переменной её тип будет или выведен компилятором, или его можно задать самостоятельно, вот так:
let thisIsImplicitlyVar = "Some string"
print(type(of: thisIsImplicitlyVar))

let thisIsExplixitlyVar: Float = 42.0
print(type(of: thisIsExplixitlyVar))

let thisIsNewVar = 42.0
print(type(of: thisIsNewVar))
//: В этом случае присваиваемое значение будет приведено к типу переменной

//: ## Типы данных
//: ### Строки и символы

let oneLineString = "Это строка"

//: Строки можно задавать в несколько строк
let multilineString = """
Это строка
"""

//: Эти формы идентичны, смотрите
oneLineString == multilineString
(oneLineString as AnyObject) === (multilineString as AnyObject)

//: Многострочные строки можно переносить для удобства, вот так:
let wrappedMultilineString = """
Это \
строка
"""
oneLineString == wrappedMultilineString

//: Некоторые символы в строках надо экранировать. `\\` это `\`, `\"` это `"`, `\n` — перевод строки, `\t` — табуляция и т.д.
//:
//: В строки можно подставлять значения, вот так:
let insideValue = "внутри"
print("оно окажется \(insideValue)")
// "оно окажется внутри"
//:
//: Строки состоят из символов. По ним можно итерироваться стандартным `for..in` циклом, вот так

for character in "Пёс!🐶" {
    print(character)
}

// П
// ё
// с
// !
// 🐶
//: Так же строку можно создавать из массива символов, вот так
let catCharacters: [Character] = ["К", "о", "т", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Выведет "Кот!🐱"

//: Следующий пример напечатает цифры на основе номером символов таблицы Unicodes
// Цифры от 0 до 9
for value in 48...57 {
    print(Unicode.Scalar(value)!)
}
//: Следующий пример напечатает символы из таблицы Unicodes
let value = "abc"
for u in value.utf8 {
    print(u)
}
//: Строку можно проверить на то, пустая ли она вот так
print(catString.isEmpty)

//: И узнать, сколько в ней символов вот так
print(catString.count)

//: Важно понимать, что `count` выводит количество unicode символов в строке, то есть если к строке добавить символ-модификатор, то количество символов в ней не изменится
var word = "cafe"
print("количество символов в \(word) = \(word.count)")
// Prints "количество символов в cafe = 4"

//word = word + "\u{301}"
word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("количество символов в \(word) = \(word.count)")
// Prints "количество символов в café = 4"

//: ### Числа
//: С числами всё проще — у нас есть целые числа
let integerVariable = 100000
//: Дробные числа
let floatValue: Float = 42
let doubleValue: Double = 42
//: Булевы значения
let boolValue = true
//: При записи числа для удобства можно разделять на блоки цифр, вот так
let separatedLongInteger = 1_000_000_000
//: Так же числа можно записывать в разных системах счисления
let hexInteger = 0xDEADBEEF
let octoInteger = 0o776655
let binaryInteger = 0b1101001000111


//:Что будет если написать следующее:
//let a = 5.1
//let b = 7
//let c = a + b
