import UIKit

//MARK:- Sum Mixed Array

/*
Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

Return your answer as a number.

 */

func sumMix(_ arr: [Any]) -> Int {
  return arr.reduce(0, {
    $0 + Int("\($1)")!
  })
}


//MARK:- Counting Duplicates

/*
 Count the number of Duplicates

 Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

 Example

 "abcde" -> 0 # no characters repeats more than once
 "aabbcde" -> 2 # 'a' and 'b'
 "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
 "indivisibility" -> 1 # 'i' occurs six times
 "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
 "aA11" -> 2 # 'a' and '1'
 "ABBA" -> 2 # 'A' and 'B' each occur twice
 */
func countDuplicates(_ s:String) -> Int {
    let mappedItems = s.lowercased().map {($0, 1)}
    let dict = Dictionary(mappedItems, uniquingKeysWith: +)
    let result = dict.filter({ $0.value > 1 })
    return result.count
}

countDuplicates("aabbcde")

//[1,2,3,4,5].reduce(0, { $0 + $1 })
