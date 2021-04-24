Day5 - Copy code to playground

Challenge 1: Reverse or rotate -  https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991

/*
 The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string) of size sz (ignore the last chunk if its size is less than sz).

 If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.

 If

 sz is <= 0 or if str is empty return ""
 sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".
 Examples:
 revrot("123456987654", 6) --> "234561876549"
 revrot("123456987653", 6) --> "234561356789"
 revrot("66443875", 4) --> "44668753"
 revrot("66443875", 8) --> "64438756"
 revrot("664438769", 8) --> "67834466"
 revrot("123456779", 8) --> "23456771"
 revrot("", 8) --> ""
 revrot("123456779", 0) --> ""
 revrot("563000655734469485", 4) --> "0365065073456944"
 */

extension Array {
  func chunked(into size: Int) -> [[Element]] {
    return stride(from: 0, to: count, by: size).map {
        Array(self[$0 ..< Swift.min($0 + size, count)])
    }
  }
}
func revRot(_ s: String, _ c: Int) -> String {
if s == "" || c <= 0 || c > s.count { return "" }
var result: [String] = []
var chunk = Array(s).chunked(into: c)
var filteredChunk = chunk.filter({ $0.count == c })
for eachArray in filteredChunk {
    for j in eachArray {
         Int(String(j))! * Int(String(j))! * Int(String(j))!
    } //squared
    let reduced = eachArray.reduce(0, +)
    if ( reduced % 2 == 0 ) {
        result.append(String(eachArray.reversed()))
    } else {
        //rotate
        var each = eachArray
        var last = each.popLast()
        each.insert(last!, at: 0)
        result.append(String(each))
    }
    
}
return result.joined()
}

MARK:-

Challenge 2: Sum of angles - https://www.codewars.com/kata/5a03b3f6a1c9040084001765

//Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.

return (( (n - 3) * 180) + 180 )
// a cleaner result -> (n-2)*180

