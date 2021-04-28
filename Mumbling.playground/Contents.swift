import Foundation

/*
 This time no story, no theory. The examples below show you how to write function accum:

 Examples:

 accum("abcd") -> "A-Bb-Ccc-Dddd"
 accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
 accum("cwAt") -> "C-Ww-Aaa-Tttt"
 The parameter of accum is a string which includes only letters from a..z and A..Z.
 */

//MARK:-

func accum(_ s: String) -> String {
    var resArr = [String]()
    for (index, value) in s.enumerated(){
        let repeated = Array.init(repeating: value, count: index+1)
        resArr.append(String(repeated))
    }
    return resArr.joined(separator: "-").capitalized
}
let s = "RqaEzty"
accum(s)

