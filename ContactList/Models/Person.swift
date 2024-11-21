//
//  Person.swift
//  ContactList
//
//  Created by Perejro on 17/11/2024.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        let service = DataStore.service
        let data = service.fetch()
        
        return data.names.enumerated().map { (index, name) in
            let surname = index < data.surnames.count ? data.surnames[index] : "Фамилия не найдена"
            let email = index < data.emails.count ? data.emails[index] : "Почта не найдена"
            let phone = index < data.phones.count ? data.phones[index] : "Телефон не найден"
            
            return Person(
                name: name,
                surname: surname,
                phone: phone,
                email: email
            )
        }
    }
}
