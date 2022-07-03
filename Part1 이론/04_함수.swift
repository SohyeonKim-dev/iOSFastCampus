import Foundation

// 함수


/*
 - 반복적인 작업 수행 시 호출
 - 하나의 기능을 하나의 함수로
 - func 키워드 사용
 */



// 1) 가장 기본적인 형태

func sum(a: Int, b: Int) -> Int {
    return a+b
}
sum(a: 5, b: 3)



// 2) 매개변수가 없는 형태 (반환 값은 있음)

func hello() -> String {
    return "hello"
}

hello()



// 3) 반환값도 없는 형태

func voidFunc1() -> Void {
    
}

func voidFunc2() {
    
}



// 4) 매개변수 기본값을 주는 형태

func printName(friend: String, me: String = "Colli"){
    print("Hello, \(friend)! I'm \(me)")
}

printName(friend: "border")
printName(friend: "border", me: "콜리")



// 5) 전달인자 레이블
// 매개변수 이름 앞에, 전달인자 레이블을 붙여줄 수 있음

func sendMessage(form myName: String, to name: String){
    print("Hello, \(name)! I'm \(myName)")
}

sendMessage(form: "collicolli", to: "colli")
// 전달 인자 레이블 왜 사용?
// 사용자 입장에서 쉽게 사용 가능, 가독성을 높일 수 있다.
// 편리성, 이해 좋기 때문에 쓰는 듯



// 6) 와일드 카드 사용

func sendName(_ name: String) -> String {
    return "Hello \(name)"
}

sendName("colli")
// sendName(name = "colli2")
// 와일드 카드 : 전달 인자 레이블을 사용하지 않는다!
// 따라서 네임으로 전달하려 하면 오류가 발생한다! 와우



// 7) 가변 매개변수

func sendMessages(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}
// 매개변수 타입 뒤에 ... (점 3개 붙이면) 가변 매개변수가 된다.

sendMessages(me: "Colli", friends: "1", "2", "3", "44")

