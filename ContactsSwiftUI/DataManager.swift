//
//  DataManager.swift
//  ContactsSwiftUI
//
//  Created by Oksana Tugusheva on 16.06.2021.
//

class DataManager {
    let firstNames = ["Chris", "Bob", "Mike", "Freddy", "Alan", "Tim", "Chris", "Gerbert", "Lonny"]
    let lastNames = ["Kaufman", "Miles", "Cook", "Tayson", "Devines", "Smith", "Wolsh", "Makin", "Bin"]
    let emails = ["sir@der.com", "fon@bon.com", "cto@apple.com", "it@mall.com", "boss@mouse.com", "me@somename.ya", "oops@wer.ycom", "cool@sam.com", "sir@baron.bon"]
    let phones = ["4325342134", "456523412", "234356753", "998234585", "678239222", "1234325566", "45624535", "3456723213", "345354577"]
    
    static var shared = DataManager()
    
    private init() {}
}
