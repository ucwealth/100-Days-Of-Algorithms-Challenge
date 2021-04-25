import Foundation


func findDifference(_ a: [Int], _ b: [Int]) -> Int {
  let arr = [a,b].map({ $0.reduce(1,*) })
  return arr[0] > arr[1] ? arr[0] - arr[1] : arr[1] - arr[0]
}

findDifference([3, 2, 5], [1, 4, 4])
