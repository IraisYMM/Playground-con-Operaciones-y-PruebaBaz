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
    

let str = "Hello\tBaz\n\n'Swift\'"
print(str)
