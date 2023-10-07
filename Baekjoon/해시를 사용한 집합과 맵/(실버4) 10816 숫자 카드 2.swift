import Foundation

var dic: [Int:Int] = [:]
let N: Int = Int(readLine()!)!
let have: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
have.forEach { dic[$0] = (dic[$0] ?? 0) + 1 }
let M: Int = Int(readLine()!)!
let check: [Substring] = readLine()!.split(separator: " ")
check.forEach { print(dic[Int($0)!] ?? 0, terminator: " ") }

