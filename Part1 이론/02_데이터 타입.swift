import Foundation

/*
 
 Int: 부호가 있는 64bit 정수형
 UInt: 부호가 없는 64bit 정수형
 Float: 32bit 부동 소수점
 Double: 64bit 부동 소수점
 Bool: true, false 값
 Character: 문자
 String: 문자열
 Any: 모든 타입을 지칭하는 키워드
 
 */


var someInt:Int = 3
// someInt = 3.0

var someUInt:UInt = 3
// someUInt = -2

var someFloat: Float = 1.1
someFloat = 3
// 에러 발생 안 함 -> 자동으로 3.0 으로 인식

var someDouble: Double = 1.1
someDouble = 1
// 에러 발생 안 함 -> 자동으로 1.0 으로 인식

var someBool: Bool = true
someBool = false
// someBool = 1.0
// someBool = 1

var someCharacter: Character = "Q"
someCharacter = "🎵"
// someCharacter = "dkdk"
// someCharacter = 'Q'
// someCharacter = "🎵🎵"


/*
 
 1) 문자형 대입 가능
 2) 이모티콘 대입 가능
 3) ' ' 사용 불가, " " 무조건 쌍따옴표 사용
 4) 문자열 대입 불가능 (문자 딱 하나만 캐릭터에 가능, 스트링 불가능)
 5) 이모티콘도 여러 개면 불가능
 
 */

var someString: String = "hello 👋"

// 타입 추론
// :타입 <- 이 부분을 생략해도 컴파일러가 추론하여 사용 가능
var number = 10
