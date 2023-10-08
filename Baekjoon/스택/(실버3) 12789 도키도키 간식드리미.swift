import Foundation

var stack: [Int] = []
var check: Bool = true
var pass: Int = 0
let N: Int = Int(readLine()!)!
let nums: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
nums.forEach { num in
	if num - 1 == pass { pass = num }
	else { stack.append(num) }
	while !stack.isEmpty && stack.last! - 1 == pass { pass = stack.popLast()! }
}
while !stack.isEmpty {
	let last: Int = stack.popLast()!
	if last - 1 == pass { pass = last }
	else {
		check = false
		break
	}
}
print(check ? "Nice" : "Sad")
