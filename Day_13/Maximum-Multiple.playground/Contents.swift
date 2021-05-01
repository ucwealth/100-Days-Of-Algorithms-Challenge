import Foundation

func maxMultiple(_ d: Int, _ b: Int) -> Int {
    return (0...b).filter({ $0.isMultiple(of: d) && $0 > 0 }).max()!
}
