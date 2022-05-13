//
//  ViewController.swift
//  LogInWithMVP
//
//  Created by Artem Pavlov on 12.05.2022.
//

import UIKit

protocol MainViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

class MainViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet var greetingLabel: UILabel!
    
    //MARK: - Private Properties
    private var presenter: GreetingPresenterProtocol!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Artem", surname: "Pavlov")
        presenter = GreetingPresenter(view: self, person: person)
    }
    
    // MARK: - IB Actions
    @IBAction func enterButton() {
        presenter.showGreeting()
    }
}

// MARK: - Delegate
extension MainViewController: MainViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}

