/*
 
 <Lv4>
 
 - 숫자를 입력해야하는데 문자를 입력했을때 다시 입력할 수 있도록 예외를 처리해요
 - 현재 잔액과 가격을 비교해서 구매 가능한 상태를 정의해요 (해당 기능을 담당하는 클래스를 새로 정의하셔도 됩니다.)
 
 */

import Foundation

//메뉴 클래스
class Menu_Lv4{
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
class Order_Lv4{
    var items: [Menu_Lv4]
    var balnce: Double
    
    init(balnce: Double) {
        self.items = []
        self.balnce = balnce
    }
    
    // 메뉴 추가 함수
    func add(item: Menu_Lv4) {
        items.append(item)
    }
    
    // 총 가격 계산 함수
    func calculateTotal() -> Double{
        var total: Double = 0.0
        for item in items {
            total += item.price
        }
        return total
    }
    
    // 구매 가능 상태 확인 함수
    func isBuyable(){
    }
    
    func menuOrder(order: Order_Lv4){
    }
    
}

func mainLv4(){
    let myBalnce: Double = 20000
    
    while true{
        print("현재 잔액 : \(myBalnce)")
        
    }
}
