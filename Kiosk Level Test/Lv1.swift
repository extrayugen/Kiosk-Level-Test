/*

 - 입력받은 숫자에 따라 다른 로직을 실행하는 코드를 작성해요.
 - if나 switch, guard 문을 활용해요
 - 반복문을 이용해서 특정 번호가 입력되면 프로그램을 종료해요
 - readline 함수로 값을 입력받으세요.

*/

import Foundation

// 버거 메뉴판 출력 함수
func printBurgersMenu() {
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

// 프로즌 커스타드 출력 함수
func printFrozenCustardMenu() {
    print("""
    
    [ Frozen Custard MENU ]
    1. Frozen Custard 1   | W 6.9 | 설명 1
    2. Frozen Custard 2   | W 8.9 | 설명 2
    3. Frozen Custard 3   | W 9.4 | 설명 3
    4. Frozen Custard 4   | W 6.9 | 설명 4
    5. Frozen Custard 5   | W 5.4 | 설명 5
    0. 뒤로가기             | 뒤로가기
    
    """)
}
    
func printDrinksMenu() {
    print("""
    
    [ Drinks MENU ]
    1. Drinks 1   | W 6.9 | 설명 1
    2. Drinks 2   | W 8.9 | 설명 2
    3. Drinks 3   | W 9.4 | 설명 3
    4. Drinks 4   | W 6.9 | 설명 4
    5. Drinks 5   | W 5.4 | 설명 5
    0. 뒤로가기     | 뒤로가기
    
    """)
}
    
func printBeerMenu() {
    print("""
    
    [ Beer MENU ]
    1. Beer 1   | W 6.9 | 설명 1
    2. Beer 2   | W 8.9 | 설명 2
    3. Beer 3   | W 9.4 | 설명 3
    4. Beer 4   | W 6.9 | 설명 4
    5. Beer 5   | W 5.4 | 설명 5
    0. 뒤로가기    | 뒤로가기
    
    """)
}
    
func mainLv1() {
    while true {
        printMainMenu()
        print("-> 메뉴를 선택해주세요: ", terminator: "")
        
        if let input = readLine(), let menuNumber = Int(input) {
            
            // 입력값이 숫자로 변환될 수 있는지 확인
            switch menuNumber {
            case 1:
                printBurgersMenu()
            case 2:
                printFrozenCustardMenu()
            case 3:
                printDrinksMenu()
            case 4:
                printBeerMenu()
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
