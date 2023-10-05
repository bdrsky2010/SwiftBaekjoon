import Foundation

func recursion(_ s: [Character], _ l: Int, _ r: Int, count: Int) -> (Int, Int) {
	if l >= r { return (1, count) }
	else if s[l] != s[r] { return (0, count) }
	return recursion(s, l + 1, r - 1, count: count + 1)
}

let T: Int = Int(readLine()!)!
(0..<T).forEach { _ in
	let S: [Character] = readLine()!.map { $0 }
	let answer: (Int, Int) = recursion(S, 0, S.count - 1, count: 1)
	print(answer.0, answer.1)
}
