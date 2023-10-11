import Foundation

func P(_ n: Int) -> Int {
	var triangle: [Int] = [0, 1, 1, 1]
	if n <= 3 { return 1 }
	for i in 4...n { triangle.append(triangle[i - 3] + triangle[i - 2]) }
	return triangle[n]
}
let T: Int = Int(readLine()!)!
(0..<T).forEach { _ in print(P(Int(readLine()!)!)) }
