import Foundation

let input: [Substring] = readLine()!.split(separator: " ")
let (N, M): (Int, Int) = (Int(input[0])!, Int(input[1])!)
var S: [String] = []
var cnt: Int = 0
for _ in 0..<N { S.append(readLine()!) }
S.sort()
for _ in 0..<M {
	let str: String = readLine()!
	var start = 0
	var end = S.count - 1
	while start <= end {
		let mid = (start + end) / 2
		if S[mid] < str { start = mid + 1 }
		else if S[mid] > str { end = mid - 1 }
		else if S[mid] == str {
			cnt += 1
			break
		}
	}
}
print(cnt)
