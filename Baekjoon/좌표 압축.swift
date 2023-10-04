import Foundation

// 오늘의 교훈 split 메서드가 component 메서드보다 빠르다!!
let N: Int = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dic: [Int:Int] = [:]
var index: Int = 0
for num in arr.sorted() {
	if dic[num] == nil {
		dic[num] = index
		index += 1
	}
}
print(arr.map { String(dic[$0] ?? 0) }.joined(separator: " "))
