func leerNum() -> Double? {
    print("Ingrese un número:")
    let entrada = readLine()
    if let num =  Double (entrada ?? "") {
        return num
    } else {
        return nil
    }
}

func leerOperador() -> String? {
    print("Ingrese un operador (+, -, *, /):")
    let operador = readLine()
    return operador
}

if let num1 = leerNum(),
   let simbolo = leerOperador(),
   let num2 = leerNum() {

    var result: Double = 0.0
    if simbolo == "+" {
        result = num1 + num2
    } else if simbolo == "-" {
        result = num1 - num2
    } else if simbolo == "*" {
        result = num1 * num2
    } else if simbolo == "/" {
        if num2 == 0 {
            print("Error: División por cero.")
            
        }
        result = num1 / num2
    } else {
        print("Operador inválido. Por favor ingrese uno de los siguientes operadores: +, -, *, /")
        
    }
    // Imprimimos el resultado
    print("El resultado es: \(result)")
} else {
    print("Entrada inválida. Por favor ingrese un número y un operador.")
    
}

