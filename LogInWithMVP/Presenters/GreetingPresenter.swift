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
    
    //MARK: - Private Properties
    private let name: String
    private let surname: String
    
    //MARK: - GreetingPresenter init
    unowned let view: MainViewProtocol
    
    required init(view: MainViewProtocol, personName: String, personSurname: String) {
        self.view = view
        self.name = personName
        self.surname = personSurname
    }
    
    func showGreeting() {
        let person = getPerson()
        let greetingText = "Hello, \(person.name) \(person.surname)!"
        view.setGreeting(greetingText)
    }
    
    //MARK: - Private Methods
    private func getPerson() -> Person {
        let person = Person(name: name, surname: surname)
        return person
    }
}
