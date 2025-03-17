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
                bio: """
                Я родился в ЕКБ в 90-х на краю города
                Игры рано ударили в голову
                В четыре активно игрался Сегой
                в детском саду, поцыки впервые рассказали про контру
                Потом школа, вонючая форма, q-basic, excel
                Так я становился сильней
                Воровал образы Alcohol-ем
                В 9 сгонял в компы, в одиннадцать собрал первый комп
                Забил на родителей, стал пропадать с друзьями в локалке
                ...
                
                На мотив "Кровосток: Биография"
                """
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
