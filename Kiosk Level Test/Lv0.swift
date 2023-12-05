/*
 
 - 요구사항별로 상세 기능을 생각해요
 - 사용하면서 발생할 수 있는 예외사항들을 생각해요
 
 */

import Foundation

// 메뉴판 출력 함수
func printMainMenu() {
    print("""
    
    [ SHAKESHACK MENU ]
    1. Burgers         | 앵거스 비프 통살을 다져만든 버거
    2. Frozen Custard  | 매장에서 신선하게 만드는 아이스크림
    3. Drinks          | 매장에서 직접 만드는 음료
    4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주
    0. 종료            | 프로그램 종료

    """)
}

// 메인 함수
func mainLv0() {
    while true {
        printMainMenu()
        print("-> 메뉴를 선택해주세요: ", terminator: "")
        
        if let input = readLine(), let menuNumber = Int(input) {
            switch menuNumber {
            case 1:
                print("Burgers 메뉴를 선택했습니다.")
            case 2:
                print("Frozen Custard 메뉴를 선택했습니다.")
            case 3:
                print("Drinks 메뉴를 선택했습니다.")
            case 4:
                print("Beer 메뉴를 선택했습니다.")
            case 0:
                print("프로그램을 종료합니다.")
                exit(0)
            default:
                print("잘못된 선택입니다. 다시 시도해주세요.")
            }
        } else {
            print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
        }
    }
}
