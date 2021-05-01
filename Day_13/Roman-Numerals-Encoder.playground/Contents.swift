import Foundation

/*
 Create a function taking a positive integer as its parameter and returning a string containing the Roman Numeral representation of that integer.

 Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

 Example:

 solution(1000) // should return "M"
 Help:

 Symbol    Value
 I          1
 V          5
 X          10
 L          50
 C          100
 D          500
 M          1,000
 Remember that there can't be more than 3 identical symbols in a row.

 More about roman numerals - http://en.wikipedia.org/wiki/Roman_numerals

 */

func solution(_ number:Int) -> String {
    var num = number
    var result = ""
    //let rn: [Int:String] = [1: "I", 4: "IV", 5: "V", 9: "IX", 10: "X", 50: "L", 100: "C", 500: "D", 1000: "M"]
    
    let roman = ["I","IV","V","IX","X","XL","L","XC","C","CD","D","DM","M"]
    let digits = [1,4,5,9,10,40,50,90,100,400,500,900,1000]
    
    for i in 0..<digits.count {
        while digits[i] <= num {
            result += roman[i]
            num -= digits[i]
        }
    }
    /*
     for (var index = 0; index < decimalValue.length; index++) {
       while (decimalValue[index] <= num) {
         romanized += romanNumeral[index];
         num -= decimalValue[index];
       }
     }
     */
//
//    for i in rn.keys {
//      if num == i {
//        result += rn[num] ?? "0"
//      }
//      else if num > 0 && num <= 3 {
//        result += ( rn[num] * num ) ?? "1"
//      }
//    }
    return result
}
solution(1000)
solution(5)
solution(2)
solution(1952)

//var myDictionary:[String:Int] = ["Mohan":75, "Raghu":82, "John":79]
//
//for (index, key_value) in myDictionary.enumerated() {
//   print("\(index): \(key_value)")
//}

