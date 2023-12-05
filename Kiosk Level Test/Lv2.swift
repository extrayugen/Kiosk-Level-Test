/*

 <Lv2>
 
 - 필요한 클래스들을 설계해요 (버거, 아이스크림, 음료, 맥주, 주문, 공통 등)
 - 클래스들의 프로퍼티와 메소드를 정의해요
 - 메소드를 이용해서 Lv1의 코드를 개선해요

*/



// 버거 클래스
class Burger_Lv2 {
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

// 아이스크림 클래스
class IceCream_Lv2 {
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

// 음료 클래스
class Drink_Lv2 {
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

// 맥주 클래스
class Beer_Lv2 {
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

// 주문 클래스
class Order_Lv2 {
    var items: [Any]
    
    init(items: [Any]) {
        self.items = items
    }
    
    func add(item: Any){
        items.append(item)
    }
}

// 메인 함수
func mainLv2() {
    while true {
        printMainMenu()
        print("\n\n메뉴를 선택해주세요: ", terminator: "")
        
        // 입력값이 숫자로 변환될 수 있는지 확인
        if let input = readLine(), let menuNumber = Int(input) {
            switch menuNumber {
            case 1:
                printBurgersMenu()
            case 2:
                printIceCreamMenu()
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

