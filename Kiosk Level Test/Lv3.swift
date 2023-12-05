/*
 
 Lv2에서 설계한 클래스들을 상속 관계를 가지도록 변경해요 (Burger도 부모 클래스를 가질 수 있을지 고민해요!)
 하나의 객체 리스트로 모든 메뉴들을 관리하도록 수정해요 (List)
 
 */

import Foundation

// 메뉴 클래스.  <- 부모 클래스
class Menu {
    var name: String
    var price: Double
    var description: String
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
    
    func displayInfo() {
        print("\(name) | W \(price) | \(description)")
    }
}

// 버거, 아이스크림, 음료, 맥주, 주문 클래스 <- 자식 클래스
class Burger_Lv3: Menu{
}

class IceCream_Lv3: Menu{
}

class Drink_Lv3: Menu {
}

class Beer_Lv3: Menu {
}

class Order_Lv3{
    var items: [Menu]
    init() {
        
        // items 배열을 빈 배열로 초기화
        self.items = []
    }
    
    // 메뉴 아이템 담는 함수
    func add(item: Menu){
        items.append(item)
    }
    
    // 주문 정보 표시 함수
    func displayOrder(){
        print("[ Orders ]")
        for item in items {
            item.displayInfo()
        }
    }
    
    // 계산 함수
    func calculateTotal() -> Double{
        var total: Double = 0.0
        for item in items {
            total = total + item.price
        }
        return total
    }
}



let burger1 = Burger_Lv3(name: "ShackBurger", price: 6.9, description: "토마토, 양상추, 쉑소스가 토핑된 치즈버거")
let burger2 = Burger_Lv3(name: "SmokeShack", price: 8.9, description: "베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
let burger3 = Burger_Lv3(name: "Shroom burger", price: 9.4, description: "몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
let burger4 = Burger_Lv3(name: "Cheese burger", price: 6.9, description: "포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
let burger5 = Burger_Lv3(name: "Hamburger", price: 5.4, description: "비프패티를 기반으로 야채가 들어간 기본버거")

let iceCream1 = IceCream_Lv3(name: "iceCream1", price: 6.9, description: "아이스크림 1")
let iceCream2 = IceCream_Lv3(name: "iceCream2", price: 8.9, description: "아이스크림 2")
let iceCream3 = IceCream_Lv3(name: "iceCream3", price: 9.4, description: "아이스크림 3")
let iceCream4 = IceCream_Lv3(name: "iceCream4", price: 6.9, description: "아이스크림 4")
let iceCream5 = IceCream_Lv3(name: "iceCream5", price: 5.4, description: "아이스크림 5")

let drink1 = Drink_Lv3(name: "drink1", price: 6.9, description: "음료 1")
let drink2 = Drink_Lv3(name: "drink1", price: 8.9, description: "음료 2")
let drink3 = Drink_Lv3(name: "drink1", price: 9.4, description: "음료 3")
let drink4 = Drink_Lv3(name: "drink1", price: 6.9, description: "음료 4")
let drink5 = Drink_Lv3(name: "drink1", price: 5.4, description: "음료 5")

let bear1 = Beer_Lv3(name: "bear1", price: 6.9, description: "맥주 1")
let bear2 = Beer_Lv3(name: "bear1", price: 8.9, description: "맥주 2")
let bear3 = Beer_Lv3(name: "bear1", price: 9.4, description: "맥주 3")
let bear4 = Beer_Lv3(name: "bear1", price: 6.9, description: "맥주 4")
let bear5 = Beer_Lv3(name: "bear1", price: 5.4, description: "맥주 5")

// 메인 함수
func mainLv3() {
    let order = Order_Lv3() // 주문 객체 생성
    
    while true {
        printMainMenu()
        print("\n\n메뉴를 선택해주세요: ", terminator: "")
        
        if let input = readLine(), let menuNumber = Int(input) {
            
            // 입력값이 숫자로 변환될 수 있는지 확인
            switch menuNumber {
            case 1:
                printBurgersMenu()
                print("\n\n상세 메뉴를 선택해주세요: ", terminator: "")
                if let subInput = readLine(), let subMenuNumber = Int(subInput) {
                    switch subMenuNumber {
                    case 0:
                        continue
                    case 1:
                        order.add(item: burger1)
                        print("\(burger1.name)가 장바구니에 추가되었습니다.")
                    case 2:
                        order.add(item: burger2)
                        print("\(burger2.name)가 장바구니에 추가되었습니다.")
                    case 3:
                        order.add(item: burger3)
                        print("\(burger3.name)가 장바구니에 추가되었습니다.")
                    case 4:
                        order.add(item: burger4)
                        print("\(burger4.name)가 장바구니에 추가되었습니다.")
                    case 5:
                        order.add(item: burger5)
                        print("\(burger5.name)가 장바구니에 추가되었습니다.")
                    default:
                        print("잘못된 선택입니다. 다시 시도해주세요.")
                    }
                } else {
                    print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
                }
                
            case 2:
                printIceCreamMenu()
                print("\n\n메뉴를 선택해주세요: ", terminator: "")
                if let subInput = readLine(), let subMenuNumber = Int(subInput) {
                    switch subMenuNumber {
                    case 0:
                        continue
                    case 1:
                        order.add(item: iceCream1)
                        print("\(iceCream1.name)가 장바구니에 추가되었습니다.")
                    case 2:
                        order.add(item: iceCream2)
                        print("\(iceCream2.name)가 장바구니에 추가되었습니다.")
                    case 3:
                        order.add(item: iceCream3)
                        print("\(iceCream3.name)가 장바구니에 추가되었습니다.")
                    case 4:
                        order.add(item: iceCream4)
                        print("\(iceCream4.name)가 장바구니에 추가되었습니다.")
                    case 5:
                        order.add(item: iceCream5)
                        print("\(iceCream5.name)가 장바구니에 추가되었습니다.")
                    default:
                        print("잘못된 선택입니다. 다시 시도해주세요.")
                    }
                } else {
                    print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
                }
                
            case 3:
                printDrinksMenu()
                print("\n\n메뉴를 선택해주세요: ", terminator: "")
                if let subInput = readLine(), let subMenuNumber = Int(subInput) {
                    switch subMenuNumber {
                    case 0:
                        continue
                    case 1:
                        order.add(item: drink1)
                        print("\(drink1.name)가 장바구니에 추가되었습니다.")
                    case 2:
                        order.add(item: drink2)
                        print("\(drink2.name)가 장바구니에 추가되었습니다.")
                    case 3:
                        order.add(item: drink3)
                        print("\(drink3.name)가 장바구니에 추가되었습니다.")
                    case 4:
                        order.add(item: drink4)
                        print("\(drink4.name)가 장바구니에 추가되었습니다.")
                    case 5:
                        order.add(item: drink5)
                        print("\(drink5.name)가 장바구니에 추가되었습니다.")
                    default:
                        print("잘못된 선택입니다. 다시 시도해주세요.")
                    }
                } else {
                    print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
                }
                
            case 4:
                printBeerMenu()
                print("\n\n메뉴를 선택해주세요: ", terminator: "")
                if let subInput = readLine(), let subMenuNumber = Int(subInput) {
                    switch subMenuNumber {
                    case 0:
                        continue
                    case 1:
                        order.add(item: bear1)
                        print("\(bear1.name)가 장바구니에 추가되었습니다.")
                    case 2:
                        order.add(item: bear2)
                        print("\(bear2.name)가 장바구니에 추가되었습니다.")
                    case 3:
                        order.add(item: bear3)
                        print("\(bear3.name)가 장바구니에 추가되었습니다.")
                    case 4:
                        order.add(item: bear4)
                        print("\(bear4.name)가 장바구니에 추가되었습니다.")
                    case 5:
                        order.add(item: bear5)
                        print("\(bear5.name)가 장바구니에 추가되었습니다.")
                    default:
                        print("잘못된 선택입니다. 다시 시도해주세요.")
                    }
                } else {
                    print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
                }
                
            case 5:
                order.displayOrder()
                print("총 가격: \(order.calculateTotal())")
                
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
