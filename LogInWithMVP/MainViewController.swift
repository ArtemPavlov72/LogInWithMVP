//
//  ViewController.swift
//  LogInWithMVP
//
//  Created by Artem Pavlov on 12.05.2022.
//

import UIKit

protocol MainViewProtocol {
    func setGreeting(_ greeting: String)
}

class MainViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func enterButton() {
    }
    
}

extension MainViewController: MainViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}

