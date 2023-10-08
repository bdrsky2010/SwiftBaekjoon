import Foundation

let S: [String] = readLine()!.map { String($0) }
var dic: [String: [Int]] = [:]
for i in Character("a").asciiValue!...Character("z").asciiValue! {
	var prefix: [Int] = Array(repeating: 0, count: S.count)
	if Character(S[0]).asciiValue! == i { prefix[0] = 1 }
	for j in 1..<S.count {
		if Character(S[j]).asciiValue! == i { prefix[j] = (prefix[j - 1] + 1) }
		else { prefix[j] = prefix[j - 1] }
	}
	dic[String(UnicodeScalar(i))] = prefix
}
for _ in 0..<(Int(readLine()!)!) {
	let input: [Substring] = readLine()!.split(separator: " ")
	let alpha: String = String(input[0])
	let start: Int = Int(input[1])!
	let end: Int = Int(input[2])!
	// l번째 문자부터 r번째 문자 사이에 alpha가 몇 번 나타나는지 구해라
	// 어떤 방식으로 구해야 하는 문제일까??
	if start == 0 { print(dic[alpha]![end]) }
	else { print(dic[alpha]![end] - dic[alpha]![start - 1]) }
}
