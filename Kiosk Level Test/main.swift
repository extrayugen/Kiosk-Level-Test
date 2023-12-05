import Foundation

//레벨 선택
print("0. Lv0")
print("1. Lv1")
print("2. Lv2")
print("3. Lv3")
print("다음 중 실행할 레벨을 선택하세요: ", terminator: "")

if let input = readLine(), let choice = Int(input) {
    switch choice {
    case 0:
        mainLv0()
    case 1:
        mainLv1()
    case 2:
        mainLv2()
    case 3:
        mainLv3()
    case 4:
        mainLv4()
    case 5:
        mainLv5()
    default:
        print("올바른 선택이 아닙니다.")
    }
} else {
    print("입력을 읽을 수 없습니다.")
}
