//
//  GreetingPresenter.swift
//  LogInWithMVP
//
//  Created by Artem Pavlov on 12.05.2022.
//

import Foundation

protocol GreetingPresenterProtocol {
    init(view: MainViewProtocol, personName: String, personSurname: String)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {

    //MARK: - class init
    unowned let view: MainViewProtocol
    let name: String
    let surname: String
    
    required init(view: MainViewProtocol, personName: String, personSurname: String) {
        self.view = view
        self.name = personName
        self.surname = personSurname
    }
    
    //MARK: - Public Methods
    func showGreeting() {
        let person = Person(name: name, surname: surname)
        let greetingText = "Hello, \(person.name) \(person.surname)!"
        view.setGreeting(greetingText)
    }
}
