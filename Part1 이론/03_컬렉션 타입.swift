import Foundation


// 1) Array


var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(4)
numbers.append(2)

// 배열의 값을 꺼낼 때 인덱스로 접근
numbers[0]
numbers[1]

numbers.insert(5, at: 4)
// 순서대로 채우지 않으면 오류 남 ex) at 5
numbers

numbers.count
// 요소의 개수

numbers.remove(at: 1)
numbers
numbers.count



// 어레이를 생성하는 다양한 방식 (축약형)

var names1 = [String]()
var names2: [String] = []

var ages: [Int] = [1,2,3]



// 2) Dictionary

var dict1: Dictionary<String, Int> = Dictionary<String, Int>()
// Dictionary<String, Int> -> < value 데이터 타입, key 데이터 타입 >

var dict2: [String: Int] = [:]

var dict3: [String: Int] = ["colli1": 3]

dict3["colli2"] = 5
dict3["colli3"] = 6
dict3

dict3["colli2"] = 8
dict3

dict3.removeValue(forKey: "colli1")
dict3

dict3.count
dict3.keys
dict3.capacity


// 3) Set
// 순서 없고, 멤버가 유일한 것을 보장하는 컬렉션 타입
// 데이터가 순서대로 저장되지 않고, 데이터 중복을 허용하지 않음

var set1: Set = Set<Int>()
// set은 축약형 선언이 없어서 이러한 형태로만 가능하다
var set2: Set<Int> = Set<Int>()
// 둘 다 되네..?


var set: Set = Set<Int>()

set.insert(10)
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set

set.remove(20)
set

// set.remove(at: <#T##Set<Int>.Index#>)
// 이 at 뒤의 사용법 대체 무엇..?
// 아까부터 싹 다 오류남 ;;


