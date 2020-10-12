//
//  functionDictionary.swift
//  DictionaryOfFunctions
//
//  Created by Larry Mcdowell on 10/11/20.
//

import Foundation

typealias myFunc = (String)->()

var stringFunctionDictionary:Dictionary = [String : myFunc]()

var voidFunctionDictionary:Dictionary = [String : () -> ()]()

var exampleFunction1 : myFunc = {input in
    print("I recieved \(input)")
}

func setupDictionary(){
    stringFunctionDictionary = ["first one" : exampleFunction1]
    
    stringFunctionDictionary.updateValue({txt in print("now I'm \(txt)")}, forKey: "first one")
    
    stringFunctionDictionary["first one"]?("argument")
    
    stringFunctionDictionary["second key"] = {stringArg in print("I have just added a dictionary entry spitting out \(stringArg)")}
    
    stringFunctionDictionary.removeValue(forKey: "first one")
    
    for (key,value) in stringFunctionDictionary {
        print("found a key called \(key)")
    }
    
}

func otherExa(){
    var myDictionary:[String:Int] = ["Mohan":75, "Raghu":82, "John":79]
     
    myDictionary["Surya"] = 88
     
    for (key, value) in myDictionary {
        print("\(key) : \(value)")
    }
    
    func dictionaryOfArrayElements(){
        
        var dict = Dictionary<String, Array<Int>>()
         
        print("\(dict)")
        // [:]
         
        dict["A"] = [101]
        dict["B"] = [201]
        dict["C"] = [301]
         
        if var arr = dict["A"] {
            arr.append(102)
            dict["A"] = arr
        } else {
            dict["A"] = [101]
        }
         
        dict["B"]!.append(202)
         
        dict["C"]! += [302,303]
         
        print("\(dict)")
        // ["A": [101, 102], "B": [201, 202], "C": [301, 302, 303]]
         
    }
}
