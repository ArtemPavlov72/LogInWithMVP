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
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var secondNameTextField: UITextField!
    
    //MARK: - Private Properties
    private var presenter: GreetingPresenterProtocol!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IB Actions
    @IBAction func enterButton() {
        presenter = GreetingPresenter(
            view: self,
            personName: nameTextField.text ?? "",
            personSurname: secondNameTextField.text ?? ""
        )
        presenter.showGreeting()
    }
}

// MARK: - Delegate
extension MainViewController: MainViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
