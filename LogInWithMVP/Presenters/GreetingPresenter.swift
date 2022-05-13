//
//  GreetingPresenter.swift
//  LogInWithMVP
//
//  Created by Artem Pavlov on 12.05.2022.
//

import Foundation

protocol GreetingPresenterProtocol {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
   
    //MARK: - Public Properties
    unowned let view: MainViewProtocol
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    //MARK: - Public Methods
    func showGreeting() {
        let greetingText = "Hello, \(person.name) \(person.surname)!"
        view.setGreeting(greetingText)
    }
}
