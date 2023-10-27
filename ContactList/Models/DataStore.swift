//
//  DataStore.swift
//  ContactList
//
//  Created by John Doe on 27.10.2023.
//

import Foundation
final class DataStore {
    private var names = ["Jim Peterson",
                 "Bob Damon",
                 "Alex Cockson",
                 "Joe Kim",
                 "Howard Cole",
                 "Jane Doe",
                 "Kirk Lazarus",
                 "Rachel Gregg",
                 "Max Power",
                 "Fox Mulder"
    ]
    private var emails = ["jimp@mail.com",
                  "bobd@mail.com",
                  "alexc@mail.com",
                  "jok@mail.com",
                  "how@mail.com",
                  "jane@mail.com",
                  "laza@mail.com",
                  "sdas@mail.com",
                  "mpas@mail.com",
                  "ufo@mail.com"
    ]
    private var phones = ["3213132",
                  "7658904",
                  "4534152",
                  "334432",
                  "32223488",
                  "5556677",
                  "6879698",
                  "7578788",
                  "1212133",
                  "97890897"
    ]
    //Можно и одним рандомом обойтись, но добавил несколько для максимального микса
    func generateRandomPerson() -> Person {
        let nameIndex = Int.random(in: 0...names.count-1)
        let emailIndex = Int.random(in: 0...emails.count-1)
        let phoneIndex = Int.random(in: 0...phones.count-1)
        
        let name = names[nameIndex]
        let email = emails[emailIndex]
        let phone = phones[phoneIndex]
        
        names.remove(at: nameIndex)
        emails.remove(at: emailIndex)
        phones.remove(at: phoneIndex)
        
        return Person(name: name, email: email, phone: phone)
    }
}
