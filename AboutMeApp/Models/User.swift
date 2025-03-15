//
//  User.swift
//  AboutMeApp
//
//  Created by User on 16.03.2025.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Admin",
            password: "Admin",
            person: Person(
                name: "Артём",
                surname: "Черепанов",
                birday: "21.11.1992",
                profession: "Frontend developer",
                bio: "Bio"
            )
        )
    }
}
    
struct Person {
    let name: String
    let surname: String
    let birday: String
    let profession: String
    let bio: String
}
