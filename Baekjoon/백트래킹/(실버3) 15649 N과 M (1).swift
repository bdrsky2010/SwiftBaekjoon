import Foundation

func back(N: Int, M: Int, K: Int, arr: inout [Int], visited: inout [Bool]) {
	if (K == M) {
		for i in 0..<M {
			print(arr[i], terminator: " ")
		}
		print()
		return
	}
	for i in 1...N {
		if !visited[i] {
			arr[K] = i
			visited[i] = true
			back(N: N, M: M, K: K + 1, arr: &arr, visited: &visited)
			visited[i] = false
		}
	}
}

var arr: [Int] = Array(repeating: 0, count: 9)
var visited: [Bool] = Array(repeating: false, count: 9)

let input: [Substring] = readLine()!.split(separator: " ")
let (N, M): (Int, Int) = (Int(input[0])!, Int(input[1])!)

back(N: N, M: M, K:0, arr: &arr, visited: &visited)
