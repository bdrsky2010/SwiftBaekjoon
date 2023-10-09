import Foundation

let input: [Substring] = readLine()!.split(separator: " ")
let (N, M): (Int, Int) = (Int(input[0])!, Int(input[1])!)
var S: Set<String> = []
var cnt: Int = 0
for _ in 0..<N { S.insert(readLine()!) }
for _ in 0..<M { if S.contains(readLine()!) { cnt += 1 } }
print(cnt)
