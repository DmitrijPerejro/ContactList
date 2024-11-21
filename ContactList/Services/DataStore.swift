//
//  DataStore.swift
//  ContactList
//
//  Created by Perejro on 17/11/2024.
//

import Foundation

final class DataStore {
    private var names = [
        "Bob",
        "Dilan",
        "Perejro",
        "Dima",
        "Valera",
        "John",
        "Sasha",
        "Alex",
        "Vladimir",
        "Ivan",
        "Petro"
    ]
    
    private var surnames = [
        "Smith",
        "Johnson",
        "Williams",
        "Brown",
        "Jones",
        "Davis",
        "Miller",
        "Wilson",
        "Moore",
        "Taylor",
        "Anderson"
    ]
    
    private var emails = [
        "some1@example.com",
        "some2@example.com",
        "some3@example.com",
        "some4@example.com",
        "some5@example.com",
        "some6@example.com",
        "some7@example.com",
        "some8@example.com",
        "some9@example.com",
        "some10@example.com",
        "some11@example.com"
    ]
    
    private var phones = [
        "+1234567890",
        "+1987654321",
        "+1112233445",
        "+1777888999",
        "+1234509876",
        "+1999001122",
        "+1789456123",
        "+1800123456",
        "+1415555678",
        "+1422333445",
        "+1209988776"
    ]
    
    init() {
        shuffle()
    }
    
    func fetch() -> (
        names: [String],
        surnames: [String],
        emails: [String],
        phones: [String]
    ) {
        return (
            names: names,
            surnames: surnames,
            emails: emails,
            phones: phones
        )
    }
        
    private func shuffle() {
        names.shuffle()
        surnames.shuffle()
        emails.shuffle()
        phones.shuffle()
    }
    
    static let service = DataStore()
}

