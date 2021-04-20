//
//  Day2.swift
//  Created by Uche on 20/04/2021.
//

import Foundation

//Day-2-Challenge1-"Reversed sequence"
 /**
 * Build a function that returns an array of integers from n to 1 where n>0.
 * Example : n=5 --> [5,4,3,2,1]
 */

func reverseSeq(n: Int) -> [Int] {
  return (1...n).reversed()
}

//MARK:-

//Day-2-Challenge2-"Which are in? "

/**
 * Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.
 
 #Example 1: a1 = ["arp", "live", "strong"]
 a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
 returns ["arp", "live", "strong"]

 #Example 2: a1 = ["tarp", "mice", "bull"]
 a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
 returns []

 Notes:
 Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
 In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.
 Beware: r must be without duplicates.
 Don't mutate the inputs.

 *
 */


