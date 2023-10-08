import Foundation

var stack: [Int] = []
for _ in 0..<Int(readLine()!)! {
	let command: [Substring] = readLine()!.split(separator: " ")
	if command.count == 2 { stack.append(Int(command[1])!) }
	else if command.count == 1 {
		switch Int(command[0])! {
		case 2:
			if let last = stack.popLast() { print(last) }
			else { print(-1) }
			break
		case 3:
			print(stack.count)
			break
		case 4:
			print(stack.isEmpty ? 1 : 0)
			break
		case 5:
			if let last = stack.last { print(last) }
			else { print(-1) }
			break
		default:
			break
		}
	}
}
