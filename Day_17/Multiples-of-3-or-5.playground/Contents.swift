import Foundation

/*
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

 Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

 Note: If the number is a multiple of both 3 and 5, only count it once. Also, if a number is negative, return 0(for languages that do have them)

 Courtesy of projecteuler.net

 */

//MARK:-

func solution(_ num: Int) -> Int {
    var sum = 0
    if num < 0 {
        return 0
    }
    for i in 0..<num where i.isMultiple(of: 3) || i.isMultiple(of: 5) {
        sum += i
    }
    return sum
}
solution(10)

//Alternatives

//func solution(_ num: Int) -> Int {
//  return (0..<num).filter { ($0 % 3 * $0 % 5) == 0 }.reduce(0, +) // the * inside the closure means 'or'
//}
//
//func solution(_ num: Int) -> Int {
//  return (0..<num).filter { $0.isMultiple(of: 3) || $0.isMultiple(of: 5) }.reduce(.zero, +)
//}
