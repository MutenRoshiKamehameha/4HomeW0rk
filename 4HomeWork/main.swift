//
//  main.swift
//  4HomeWork
//
//  Created by Байгелди Акылбек уулу on 27/10/22.
//

import Foundation

print("Hello, World!")


var randomNumbers = [1,2,3,4,5,6,7,8,9,0]
var checkNumber = ""
for _ in 1...5{
    checkNumber += "\(randomNumbers.randomElement() ?? 0)"
}

    
class Product{
    
    var name:String
    var priceFor1:Int
    var count:Int
   

    
    init(name:String,priceFor1:Int,count:Int){
        self.name = name
        self.priceFor1 = priceFor1
        self.count = count
        
    }
}

    
protocol Kassir{
    func check()
    
}

class Client:Kassir{
    
    var names = ""
    var counts = ""
    var prices = ""
    

    
    var name: String
    var pruducts: [Product] = []
    var cash: Int
    var totalPrice = 0
    
    
    init (name:String,cash:Int){
        self.name = name
        self.cash = cash
    }
    
    func korzina(product:Product) {
        pruducts.append(product)
    }
    
    func check() {
        for x in pruducts{
            
            
            totalPrice += x.priceFor1 * x.count
            names += "\(x.name)   "
            counts += "\(x.count)шт   "
            prices += "\(x.priceFor1)coм   "
        }
            switch cash{
                
            case totalPrice:
            print("""
             Чек №\(checkNumber)
             Название:     \(names)
             Цена:         \(prices)
             Количество:   \(counts)
             
             Итого:\(totalPrice)coм
             """)
            case ..<totalPrice:
            print("""
                Чек №\(checkNumber)
                Название:     \(names)
                Цена:         \(prices)
                Количество:   \(counts)
                
                Итого:\(totalPrice)coм
                не хватает \(totalPrice - cash)coм
                """)
            default:
                print("""
                      Чек №\(checkNumber)
                      Название:     \(names)
                      Цена:         \(prices)
                      Количество:   \(counts)
                      
                      Итого:\(totalPrice)coм
                      \(cash - totalPrice)coм - сдача
                      """)
            }
        }
    }
    
   


var product1 = Product(name: "cola", priceFor1: 45, count: 2)
var product2 = Product(name: "pepsi", priceFor1: 60, count: 3)
var client1 = Client(name: "Petr", cash: 232)
client1.korzina(product: product1)
client1.korzina(product: product2)
client1.check()

