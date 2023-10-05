import Foundation

func factorial(_ N: Int) -> Int {
	if N == 0 { return 1 }
	else if N == 1 { return 1 }
	return N * factorial(N - 1)
}
let input: Int = Int(readLine()!)!
print(factorial(input))
