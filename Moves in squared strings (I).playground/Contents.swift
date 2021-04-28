import Foundation

//MARK:- Moves in squared strings (I)
/*
 
 This kata is the first of a sequence of four about "Squared Strings".
 You are given a string of n lines, each substring being n characters long: For example:
 s = "abcd\nefgh\nijkl\nmnop"
 We will study some transformations of this square of strings.

 Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
 vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"
 Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
 hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"
 or printed:

 vertical mirror   |horizontal mirror
 abcd --> dcba     |abcd --> mnop
 efgh     hgfe     |efgh     ijkl
 ijkl     lkji     |ijkl     efgh
 mnop     ponm     |mnop     abcd
 Task:

 Write these two functions and high-order function oper(fct, s) where fct is the function of one variable f to apply to the string s (fct will be one of vertMirror, horMirror)

 Examples:

 s = "abcd\nefgh\nijkl\nmnop"
 oper(vert_mirror, s) => "dcba\nhgfe\nlkji\nponm"
 oper(hor_mirror, s) => "mnop\nijkl\nefgh\nabcd"
 Note:

 The form of the parameter fct in oper changes according to the language. You can see each form according to the language in "Sample Tests".
 
 */

//MARK:- Solution

//func vertMirror(_ s: String) -> String {
//    // your code
//}

func horMirror(_ s: String) -> String {
    let value = s.replacingOccurrences(of: "\n", with: ",")
    let arrValue = value.components(separatedBy: " , ")
    print(arrValue)
    let res = arrValue.reversed()
    print(res)
    return res.joined()
}

// replace the dots with function parameter
//func oper(..., _ s: String) -> String {
//    // your code
//}
var s = "abcd\nefgh\nijkl\nmnop"
//var s = "abcd,nefgh,nijkl,nmnop"
horMirror(s)
