import Foundation

func fibonacci1(_ n: Int, cnt: inout Int) -> Int {
	if n == 1 || n == 2 { cnt += 1; return 1 }
	cnt += 1
	return fibonacci1(n - 1, cnt: &cnt) + fibonacci1(n - 2, cnt: &cnt)
}

func fibonacci2(_ n: Int) -> Int {
	var f: [Int] = [0, 1, 1]
	var cnt: Int = 0
	for i in 3...n {
		f.append(f[i - 1] + f[i - 2])
		cnt += 1
	}
	return cnt
}

let input: Int = Int(readLine()!)!
var cnt: Int = 0
print(fibonacci1(input, cnt: &cnt), fibonacci2(input))
