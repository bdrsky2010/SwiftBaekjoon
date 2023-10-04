import Foundation

let X = Int(readLine()!)!
var cnt: Int = 0
var cancel: Bool = false
for x in 1...X {
	for num in 1...x {
		cnt += 1
		if cnt == X {
			x % 2 == 0 ? print("\(num)/\(x - num + 1)") : print("\(x - num + 1)/\(num)")
			cancel = true
			break
		}
	}
	if cancel { break }
}
