import Foundation

//MARK:- Disemvowel Trolls

/*
Trolls are attacking your comment section!
A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

Your task is to write a function that takes a string and return a new string with all vowels removed.
For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
Note: for this kata y isn't considered a vowel.
 
 */ 

//MARK:- SOLUTION
//func disemvowel(_ s: String) -> String {
//let vowels = ["a", "e", "i", "o", "u"]
//var str = s
//  for i in str {
//    if vowels.contains(String(i)) || vowels.contains(String(i).lowercased()) {
//        str.removeAll { $0 == i }
//    }
//  }
//  return str
//}

/*
 Write a function that accepts a string of words with a similar prefix, separated by spaces, and

 returns the longest substring that prefixes all words.

 Sample input and output

 • The string “swift switch swill swim” should return “swi”.

 • The string “flip flap flop” should return “fl”.
 */
//["s":4,"w":4,"i":4,"f":1,"t":2,"c":1,"h":1,"l":2,"m":1]

func getPrefix(_ str: String)-> String{
    let strArr = str.components(separatedBy: " ")
    let base = strArr[0]
    var result = ""
    
    for i in str {
        for j in String(i) {
            if String(base).contains(j){
                result.append(j)
            }
        }

    }
    
    return result
}
getPrefix("swift switch swill swim")
getPrefix("flip flap flop")
