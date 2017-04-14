#!/usr/bin/swift

import Foundation

extension Collection where Indices.Iterator.Element == Index {
    
    /// Returns the element at the specified index iff it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Generator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

if let input = CommandLine.arguments[safe: 1] {
    
    let nsOut = try NSString(contentsOfFile: input, encoding: String.Encoding.utf8.rawValue)
    var out = String(nsOut)

    out = out.replacingOccurrences(of: "rapido", with: "swift")

    out = out.replacingOccurrences(of: "impresión", with: "print")

    out = out.replacingOccurrences(of: "como", with: "as")
    out = out.replacingOccurrences(of: "asociatividad", with: "associativity")
    out = out.replacingOccurrences(of: "piscinaautorelease", with: "autoreleasepool")
    out = out.replacingOccurrences(of: "descanso", with: "break")
    out = out.replacingOccurrences(of: "caso", with: "case")
    out = out.replacingOccurrences(of: "captura", with: "catch")
    out = out.replacingOccurrences(of: "clase", with: "class")
    out = out.replacingOccurrences(of: "PunteroInseguroConstante", with: "ConstUnsafePointer")
    out = out.replacingOccurrences(of: "continuar", with: "continue")
    out = out.replacingOccurrences(of: "conveniencia", with: "convenience")
    out = out.replacingOccurrences(of: "defecto", with: "default")
    out = out.replacingOccurrences(of: "aplazar", with: "defer")
    out = out.replacingOccurrences(of: "desiniciar", with: "deinit")
    out = out.replacingOccurrences(of: "Hhzo", with: "didSet")
    out = out.replacingOccurrences(of: "hacer", with: "do")
    out = out.replacingOccurrences(of: "tipodinámico", with: "dynamicType")
    out = out.replacingOccurrences(of: "más", with: "else")
    out = out.replacingOccurrences(of: "enumeración", with: "enum")
    out = out.replacingOccurrences(of: "extensión", with: "extension")
    out = out.replacingOccurrences(of: "caeratravés", with: "fallthrough")
    out = out.replacingOccurrences(of: "falso", with: "false")
    out = out.replacingOccurrences(of: "final", with: "final")
    out = out.replacingOccurrences(of: "para", with: "for")
    out = out.replacingOccurrences(of: "función", with: "func")
    out = out.replacingOccurrences(of: "obtener", with: "get")
    out = out.replacingOccurrences(of: "guardia", with: "guard")
    out = out.replacingOccurrences(of: "si", with: "if")
    out = out.replacingOccurrences(of: "importar", with: "import")
    // out = out.replacingOccurrences(of: "en", with: "in")
    out = out.replacingOccurrences(of: "infijo", with: "infix")
    out = out.replacingOccurrences(of: "inicializar", with: "init")
    out = out.replacingOccurrences(of: "dentro", with: "inout")
    out = out.replacingOccurrences(of: "interno", with: "internal")
    // out = out.replacingOccurrences(of: "es", with: "is")
    out = out.replacingOccurrences(of: "perezoso", with: "lazy")
    out = out.replacingOccurrences(of: "izquierda", with: "left")
    out = out.replacingOccurrences(of: "dejar", with: "let")
    out = out.replacingOccurrences(of: "mutante", with: "mutating")
    out = out.replacingOccurrences(of: "nuevo", with: "new")
    out = out.replacingOccurrences(of: "nulo", with: "nil")
    out = out.replacingOccurrences(of: "ninguna", with: "none")
    out = out.replacingOccurrences(of: "No", with: "nonmutating muda")
    out = out.replacingOccurrences(of: "operador", with: "operator")
    out = out.replacingOccurrences(of: "opcional", with: "optional")
    out = out.replacingOccurrences(of: "anular", with: "override")
    out = out.replacingOccurrences(of: "sufijo", with: "postfix")
    out = out.replacingOccurrences(of: "precedencia", with: "precedence")
    out = out.replacingOccurrences(of: "prefijo", with: "prefix")
    out = out.replacingOccurrences(of: "privado", with: "private")
    out = out.replacingOccurrences(of: "protocolo", with: "protocol")
    out = out.replacingOccurrences(of: "público", with: "public")
    out = out.replacingOccurrences(of: "repetir", with: "repeat")
    out = out.replacingOccurrences(of: "necesario", with: "required")
    out = out.replacingOccurrences(of: "regreso", with: "return")
    out = out.replacingOccurrences(of: "derecho", with: "right")
    out = out.replacingOccurrences(of: "yo", with: "self")
    out = out.replacingOccurrences(of: "Yo", with: "Self")
    out = out.replacingOccurrences(of: "conjunto", with: "set")
    out = out.replacingOccurrences(of: "estático", with: "static")
    out = out.replacingOccurrences(of: "fuerte", with: "strong")
    out = out.replacingOccurrences(of: "struct", with: "struct")
    out = out.replacingOccurrences(of: "subíndice", with: "subscript")
    out = out.replacingOccurrences(of: "súper", with: "super")
    out = out.replacingOccurrences(of: "cambiar", with: "switch")
    out = out.replacingOccurrences(of: "lanzar", with: "throw")
    out = out.replacingOccurrences(of: "cierto", with: "true")
    out = out.replacingOccurrences(of: "tratar", with: "try")
    out = out.replacingOccurrences(of: "Tipo", with: "Type")
    out = out.replacingOccurrences(of: "tipoalias", with: "typealias")
    out = out.replacingOccurrences(of: "sin", with: "unowned propietario")
    out = out.replacingOccurrences(of: "PunteroInseguro", with: "UnsafePointer")
    out = out.replacingOccurrences(of: "var", with: "var")
    out = out.replacingOccurrences(of: "débiles", with: "weak")
    out = out.replacingOccurrences(of: "dónde", with: "where")
    out = out.replacingOccurrences(of: "mientras", with: "while")
    out = out.replacingOccurrences(of: "establecerá", with: "willSet")

    out = out.replacingOccurrences(of: "Entero", with: "Int")
    out = out.replacingOccurrences(of: "Flotador", with: "Float")
    out = out.replacingOccurrences(of: "Doble", with: "Double")
    out = out.replacingOccurrences(of: "Booleano", with: "Bool")
    out = out.replacingOccurrences(of: "Cuerda", with: "String")
    out = out.replacingOccurrences(of: "Personaje", with: "Character")

    try out.write(toFile: "output.swift", atomically: true, encoding: String.Encoding.utf8)
} else {

    print("No input file")
}

