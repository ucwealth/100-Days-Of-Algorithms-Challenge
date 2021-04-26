import Foundation

/*
You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it.
The value of d will always be 0 - 9.
The value of x will always be greater than 0.

You have to return as an array

the count of these numbers,
their sum
and their product.

For example:
x = 11
d = 1
->
Numbers: 1, 10, 11
Return: [3, 22, 110]

If there are no numbers, which include the digit, return [0,0,0].
*/

//typeAlias Long = Int64
func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {

    var arr = [Int64]()
   var str = ""
    var count: Int64 = 0
    for i in 1...x {
        str = String(i)
        if str.contains(String(d)) {
            arr.append(i)
            count += 1
        }
    }
   let sum: Int64 = arr.reduce(0, +)
  var mult: Int64 = 0
  if arr.count > 0{
    mult = Int64(arr.reduce(1, *))
  }
    
    let result: [Int64] = [count, sum, mult]
    return result

}


