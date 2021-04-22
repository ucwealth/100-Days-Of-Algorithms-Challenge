//
//  Day3.swift
//  
//
//  Created by Decagon on 21/04/2021.
//

import Foundation

/**
 * Question 1
 *Write a function called repeatStr which repeats the given string string exactly n times.
 
 repeatStr(6, "I") // "IIIIII"
 repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"
 *
 */

func repeatStr(_ n: Int, _ string: String) -> String {
  // Code here:
  return String(repeating: string, count: n)
}


/*
 Question 2
 
 Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

 For example:

  persistence(for: 39) === 3 // because 3*9 = 27, 2*7 = 14, 1*4=4
                        // and 4 has only one digit
                  
  persistence(for: 999) === 4 // because 9*9*9 = 729, 7*2*9 = 126,
                         // 1*2*6 = 12, and finally 1*2 = 2
                   
  persistence(for: 4) === 0 // because 4 is already a one-digit number
 
 */

func persistence(for num: Int) -> Int {
   if num <10 {
     return 0
   }
  var num = num
  var strNum = String(num)
  for i in strNum where num > 1 {
    let mult = num.reduce(0, *)
    
  }
    print(mult)
   return 0
}
persistence(-8)
persistence(8)
persistence(123)


