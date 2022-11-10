import UIKit

var greeting = "Hello, playground"
print(greeting)
//--------------------------Hola Mundo
var saludo = "Hola Mundo"
print(saludo)
//-------------------Operaciones
//------SUMA
    func suma (a : Int ,b :Int){
        print("El resultado es:\(a+b)")
    }
    suma(a: 5, b: 4)
//Instancia Objeto
//var suma = suma()
//suma.suma(suma(a: 7, b: 2)
//Intancias una funcion
//Agregar ststic al metdodo Ej. Suma.sumar(func)(a:2,b:4)
public class Suma{
    static func suma(a: Int, b: Int)->Int{
    return a+b
    }
}
//------RESTA
    func resta(a :Int, b:Int){
        print("El resultado de la resta es:\(a-b)")
    }
    resta(a: 10, b: 4)
public class Resta{
    static func resta(a:Int, b:Int)->Int{
        return a-b
    }
}
//------MULTIPLICACION
    func multiplicacion(a:Int, b:Int){
    print("El resultado de la multiplicacion es:\(a*b)")
   }
multiplicacion(a: 8, b: 4)
public class Multiplicacion{
    static func multiplicacion(a:Int, b:Int)->Int{
        return a*b
    }
}
//------DIVISION
func division(a:Int, b:Int){
    print("El resultado de la division es:\(a/b)")
}
division(a: 10, b: 5)
public class Division{
    static func division(a:Int,b:Int)->Int{
        return a/b
    }
}
    
//----------5
let str = "Hello\tBaz\n\n'Swift\'"
print(str)
//----------7
let texto = "Mi edad es"
let edad = 25
let Mensaje = texto + String(edad)
//----------11
let listaProductos = [""]
 
//----------16
let numberOfLegs = ["araña" : 8, "hormiga":6, "gato":4]
for (animalName, legCount) in numberOfLegs{
    print("\(animalName)s tienen: \(legCount)patas")
}
//------------18
var diez = 10
let veinte = 20
var miArreglo = [diez,veinte,30]
diez = 5
miArreglo.append(diez)
miArreglo[1] = veinte-diez
print(miArreglo)

//-------------19
func revuelve(dic: inout[String: Int]) -> [String:Int]{
    dic["Uno"] = 2
    dic["Dos"] = 4
    dic["Tres"] = 1
    dic["Cuatro"] = dic["Tres"]
    dic["Seis"] = 6
    
    return dic
}
var miDiccionario : [String:Int] = ["Uno":1, "Dos":2, "Tres":3, "Cuatro":4, "Cinco":5]
var miDiccionario2 = miDiccionario
revuelve(dic: &miDiccionario)
print(miDiccionario2)
//---------------27
enum Planet{
    case mercury, venus,earth, mars, jupiter, saturn, uranus, neptune
}
//-----------29
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint{
case let (x,y) where x == y:
    print("(\(x),\(y)) is on the line x == y")
case let(x,y) where x == -y:
    print("(\(x),\(y)) is on the line x == -y")
case let (x,y):
    print("(\(x),\(y)) is just spme arbitrary point")
}
//--------------30
struct Cuboid{
    var width = 0.0, heigt = 0.0, depth = 0.0
    var volume: Double{
        return width * heigt * depth
    }
}
//---------------32

//protocol ViewActionDelegate{
//    var ViewState { get set }
//    var state: ViewState{get}
//    var userID: String?{get set}
//
//    var errorHandler:(Error)->Void)?{get set}
//
//    func handle(action: ViewAction)
//}
//-----
let diccionario:Dictionary<String,String> = ["al": "32u4","au":"328P"]

let myNumbers: [Int?]  = [1,2,nil,4,5,nil,6]
for case let .some(num) in myNumbers{
    print(num)
}

//---------------Lazyvar
func fibonacci(of num: Int) -> Int {
    if num < 2 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}
struct Person {
    var age = 16

    lazy var fibonacciOfAge: Int = {
        fibonacci(of: self.age)
    }()

    func fibonacci(of num: Int) -> Int {
        if num < 2 {
            return num
        } else {
            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
        }
    }
}
