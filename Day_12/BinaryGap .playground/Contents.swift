import Foundation

/*
A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.

For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.

Write a function:

public func solution(_ N : Int) -> Int
that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.

For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation '100000' and thus no binary gaps.

Write an efficient algorithm for the following assumptions:

N is an integer within the range [1..2,147,483,647].
 
 */

public func solution(_ N : Int) -> Int {
    let binary = String(N, radix: 2)
    var enumPair: [Int] = []
    var result: [Int] = []
    
    for (index, value) in binary.enumerated() {
        if value == "1" {
            enumPair.append(index)
        }
    }

    for i in 0..<enumPair.count - 1 {
        let sol = (enumPair[i+1] - enumPair[i]) - 1
        if sol == 0 {
            continue
        }
        result.append(sol)
    }
    return (result.max() ?? 0)
    
    
//    let bin = String(N, radix: 2)
//    print(bin)
//    let arrBin = Array(bin)
//    var result = [Int]()
//    var onecount = 0
//    var zeroCount = 0
//
//    for i in 1...arrBin.count {
//        print(i)
//
//        if arrBin[i] == "0" && arrBin[i - 1] == "1" {
//            zeroCount = 0
//            let begin = arrBin[i]
//
//            if arrBin.firstIndex(of: begin)! < arrBin.count {
//                for j in arrBin.firstIndex(of: begin)!...arrBin.count {
//
//                    if arrBin[j] == "0" {
//                        zeroCount += 1
//                    } else {
//                        onecount += 1
//                        result.append(zeroCount)
//                        break
//                      }
//                }
//            } else {
//                print("out of range")
//                break
//            }
//            print(result)
//
//        } else {
//            print("Doesnt match pattern")
//        }
//    }
//    return result.max()!
}
print(solution(529))
print(solution(9))
print(solution(20))
print(solution(15))
print(solution(32))
print(solution(1041))
print(solution(56545))
