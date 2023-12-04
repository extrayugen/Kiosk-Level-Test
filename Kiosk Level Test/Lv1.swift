/*
 
Lv1
 
 - 입력받은 숫자에 따라 다른 로직을 실행하는 코드를 작성해요.
 - if나 switch, guard 문을 활용해요
 - 반복문을 이용해서 특정 번호가 입력되면 프로그램을 종료해요
 - readline 함수로 값을 입력받으세요.

*/

import Foundation

// 메뉴판 출력 함수
class MainMenu {
    static func printMainMenu() {
        print("""
    [ SHAKESHACK MENU ]
    1. Burgers         | 앵거스 비프 통살을 다져만든 버거
    2. Frozen Custard  | 매장에서 신선하게 만드는 아이스크림
    3. Drinks          | 매장에서 직접 만드는 음료
    4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주
    0. 종료            | 프로그램 종료
    """)
    }
    
    static func printBurgersMenu() {
        print("""
    [ Burgers MENU ]
    1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거
    2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거
    3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거
    4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거
    5. Hamburger     | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거
    0. 뒤로가기      | 뒤로가기
    """)
    }
    
    static func printFrozenCustardMenu() {
        print("""
    [ Frozen Custard MENU ]
    1. Frozen Custard 1   | W 6.9 |
    2. Frozen Custard 2   | W 8.9 |
    3. Frozen Custard 3   | W 9.4 |
    4. Frozen Custard 4   | W 6.9 |
    5. Frozen Custard 5   | W 5.4 |
    0. 뒤로가기             | 뒤로가기
    """)
    }
    
    static func printDrinksMenu() {
        print("""
    [ Drinks MENU ]
    1. Drinks 1   | W 6.9 |
    2. Drinks 2   | W 8.9 |
    3. Drinks 3   | W 9.4 |
    4. Drinks 4   | W 6.9 |
    5. Drinks 5   | W 5.4 |
    0. 뒤로가기     | 뒤로가기
    """)
    }
    
    static func printBeerMenu() {
        print("""
    [ Beer MENU ]
    1. Beer 1   | W 6.9 |
    2. Beer 2   | W 8.9 |
    3. Beer 3   | W 9.4 |
    4. Beer 4   | W 6.9 |
    5. Beer 5   | W 5.4 |
    0. 뒤로가기    | 뒤로가기
    """)
    }
    
    // 사용자 입력 기다리기
    static func waitReturnMenu(){
        print("메인 메뉴로 돌아가려면 아무 키나 입력하세요")
        _ = readLine()
    }
}

func mainLv1(){
    while true {
        MainMenu.printMainMenu()
        print("메뉴를 선택해주세요: ", terminator: "")
        
        if let input = readLine(), let menuNumber = Int(input) {
            
            // 입력값이 숫자로 변환될 수 있는지 확인
            switch menuNumber {
            case 1:
                MainMenu.printBurgersMenu()
                MainMenu.waitReturnMenu()
            case 2:
                MainMenu.printFrozenCustardMenu()
                MainMenu.waitReturnMenu()
            case 3:
                MainMenu.printDrinksMenu()
                MainMenu.waitReturnMenu()
            case 4:
                MainMenu.printBeerMenu()
                MainMenu.waitReturnMenu()
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
