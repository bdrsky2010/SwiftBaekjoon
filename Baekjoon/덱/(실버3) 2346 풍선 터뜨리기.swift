import Foundation

var deque: [(Int,Int)] = []
let N: Int = Int(readLine()!)!
let input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
for (index, num) in input.enumerated() { deque.append((index + 1, num)) }
while true {
	let (index, num): (Int, Int) = deque.removeFirst()
	print(index, terminator: " ")
	if deque.isEmpty { break }
	if num > 0 {
		for _ in 0..<(num - 1) {
			let pair: (Int, Int) = deque.removeFirst()
			deque.append(pair)
		}
	} else {
		for _ in 0..<(-num) {
			let pair: (Int, Int) = deque.popLast()!
			deque.insert(pair, at: 0)
		}
	}
}
