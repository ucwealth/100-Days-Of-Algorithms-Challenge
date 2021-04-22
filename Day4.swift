nawa

// Question 1: Find the unique number
/**
 
 There is an array with some numbers. All numbers are equal except for one. Try to find it!

 findUniq([ 1, 1, 1, 2, 1, 1 ]) == 2
 findUniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
 It’s guaranteed that array contains at least 3 numbers.

 The tests contain some very huge arrays, so think about performance.
 
 */

func findUniq(_ arr: [Int]) -> Int {
//   var res = 0
//   for i in arr {
//     if arr.firstIndex(of: i) == arr.lastIndex(of: i){
//       res = i
//     }
//   }
//   return res
  
  let ar = arr.sorted()
  if ar[0] == ar[1] {
    return ar.last!
  }
  return ar.first!
  
}


// Question 2: Count the Digit
/*
 
 Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.

 Square all numbers k (0 <= k <= n) between 0 and n.

 Count the numbers of digits d used in the writing of all the k**2.

 Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.

 Examples:

 n = 10, d = 1
 the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
 We are using the digit 1 in: 1, 16, 81, 100. The total count is then 4.

 nb_dig(25, 1) returns 11 since
 the k*k that contain the digit 1 are:
 1, 16, 81, 100, 121, 144, 169, 196, 361, 441.
 So there are 11 digits 1 for the squares of numbers between 0 and 25.
 Note that 121 has twice the digit 1.
 
 */

func nbDig(_ n: Int, _ d: Int) -> Int {
  var square = 0
  var count = 0
  
  for i in 0...n {
    square = (i*i)
    for j in String(square){
      if(String(j) == String(d)){
         count += 1
      }
    }
  }
  
  return count
}
