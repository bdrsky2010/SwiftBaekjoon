import Foundation

var stack: [Int] = []
var total: Int = 0
for _ in 0..<Int(readLine()!)! {
	let input: Int = Int(readLine()!)!
	if input == 0 { stack.removeLast() }
	else { stack.append(input) }
}
while !stack.isEmpty { total += stack.popLast()! }
print(total)
