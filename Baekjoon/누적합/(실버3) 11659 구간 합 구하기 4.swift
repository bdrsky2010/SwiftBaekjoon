import Foundation

let input: [Substring] = readLine()!.split(separator: " ")
let (N, M): (Int, Int) = (Int(input[0])!, Int(input[1])!)
var prefixSum: [Int] = Array(repeating: 0, count: N + 1)
let inputArr: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
for i in 0..<inputArr.count {
	prefixSum[i + 1] = inputArr[i] + prefixSum[i]
}
for _ in 0..<M {
	let inputSection: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
	let start: Int = inputSection[0]
	let end: Int = inputSection[1]
	print(prefixSum[end] - prefixSum[start - 1])
}
