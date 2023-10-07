import Foundation

let input: [Substring] = readLine()!.split(separator: " ")
let (N, K): (Int, Int) = (Int(input[0])!, Int(input[1])!)
var prefixSum: [Int] = Array(repeating: 0, count: N + 1)
let temp: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var maxSum: Int = -10000000
for i in 1..<(N + 1) { prefixSum[i] = prefixSum[i - 1] + temp[i - 1] }
for i in 1...(N + 1 - K) {
	let start: Int = i
	let end: Int = i + K - 1
	let sum: Int = prefixSum[end] - prefixSum[start - 1]
	if sum > maxSum { maxSum = sum }
}
print(maxSum)
