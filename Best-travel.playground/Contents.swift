import Foundation

/*
 John and Mary want to travel between a few towns A, B, C ... Mary has on a sheet of paper a list of distances between these towns. ls = [50, 55, 57, 58, 60]. John is tired of driving and he says to Mary that he doesn't want to drive more than t = 174 miles and he will visit only 3 towns.

 Which distances, hence which towns, they will choose so that the sum of the distances is the biggest possible to please Mary and John?

 Example:

 With list ls and 3 towns to visit they can make a choice between: [50,55,57],[50,55,58],[50,55,60],[50,57,58],[50,57,60],[50,58,60],[55,57,58],[55,57,60],[55,58,60],[57,58,60].

 The sums of distances are then: 162, 163, 165, 165, 167, 168, 170, 172, 173, 175.

 The biggest possible sum taking a limit of 174 into account is then 173 and the distances of the 3 corresponding towns is [55, 58, 60].

 The function chooseBestSum (or choose_best_sum or ... depending on the language) will take as parameters t (maximum sum of distances, integer >= 0), k (number of towns to visit, k >= 1) and ls (list of distances, all distances are positive or null integers and this list has at least one element). The function returns the "best" sum ie the biggest possible sum of k distances less than or equal to the given limit t, if that sum exists, or otherwise nil, null, None, Nothing, depending on the language.

 With C++, C, Rust, Swift, Go, Kotlin, Dart return -1.

 Examples:

 ts = [50, 55, 56, 57, 58] choose_best_sum(163, 3, ts) -> 163

 xs = [50] choose_best_sum(163, 3, xs) -> nil (or null or ... or -1 (C++, C, Rust, Swift, Go)

 ys = [91, 74, 73, 85, 73, 81, 87] choose_best_sum(230, 3, ys) -> 228


 */
//MARK:- Best Travel -> Solution

func combos<T>(elements: ArraySlice<T>, kc: Int) -> [[T]] {
    if kc == 0 {
        return [[]]
    }

    guard let first = elements.first else {
        return []
    }

    let head = [first]
    let subcombos = combos(elements: elements, kc: kc - 1)
    var ret = subcombos.map { head + $0 }
    ret += combos(elements: elements.dropFirst(), kc: kc)
    return ret
}

func combos<T>(elements: Array<T>, kc: Int) -> [[T]] {
    return combos(elements: ArraySlice(elements), kc: kc)
}




func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
    var permuteLs = combos(elements:ls, kc:k)
    if ls.count < 2 { return -1 }
    
    var reject = [[Int]]()
    for i in permuteLs {
        var adict = [Int]()
        for j in i {
            if adict.contains(j) {
                reject.append(i)
                break
            } else {
                adict.append(j)
            }
        }
    }
    permuteLs.removeAll(where: { reject.contains($0) })
    let a = permuteLs.map({ $0.reduce(0,+) }).filter({ $0 <= t }).max() ?? -1
    return a
}

//TESTS:-

let ls = [91, 74, 73, 85, 73, 81, 87]
print(chooseBestSum(230, 3, ls))
print(chooseBestSum(331, 2, ls))
print(chooseBestSum(331, 4, ls))

var ts = [50, 55, 56, 57, 58]
print(chooseBestSum(163, 3, ts) ) //163
ts = [50]
print(chooseBestSum(163, 3, ts) )// -1


