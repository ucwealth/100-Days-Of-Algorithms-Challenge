import Foundation

/**
 1.=====
 
 Welcome. In this kata, you are asked to square every digit of a number and concatenate them.
 For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
 Note: The function accepts an integer and returns an integer
 
 */

func squareDigits(_ num: Int) -> Int {
    let numb = String(num)
    var str = ""
  
    for i in numb {
        let l = (Int(String(i))! * Int(String(i))!)
        str += String(l)
    }
    
    return Int(str)!
   
}
print(squareDigits(12345))

/**
 2.=========
 
 Born a misinterpretation of this kata, your task here is pretty simple: given an array of values and an amount of beggars, you are supposed to return an array with the sum of what each beggar brings home, assuming they all take regular turns, from the first to the last.

 For example: [1,2,3,4,5] for 2 beggars will return a result of [9,6], as the first one takes [1,3,5], the second collects [2,4].

 The same array with 3 beggars would have in turn have produced a better out come for the second beggar: [5,7,3], as they will respectively take [1,4], [2,5] and [3].

 Also note that not all beggars have to take the same amount of "offers", meaning that the length of the array is not necessarily a multiple of n; length can be even shorter, in which case the last beggars will of course take nothing (0).

 Note: in case you don't get why this kata is about English beggars, then you are not familiar on how religiously queues are taken in the kingdom ;)

 Note 2: do not modify the input array.

 
 */

func beggars(_ values: [Int], _ n: Int) -> [Int] {
  
      var solution = [Int]()
      if n == 0 {
          return solution
      }
    
    for i in 0..<n {
      var total = 0
      
      var second = i
      while second < values.count {
        total += values[second]
        second += n
      }
      solution.append(total)
      
    }
      
      return solution
}
