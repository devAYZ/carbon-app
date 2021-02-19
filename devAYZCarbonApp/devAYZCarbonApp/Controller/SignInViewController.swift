//
//  SignInViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 16/02/2021.
//

import UIKit

class SignInViewController: UIViewController {
    static let identifier = "SignInViewController"
    
    lazy var logo = UIImageView()
    lazy var signInWelcomeInfo = UITextView()
    lazy var phone = UITextView()
    lazy var phoneCell = UITextField()
    lazy var pin = UITextView()
    lazy var pinCell = UITextField()
    lazy var signInByeInfo = UITextView()
    lazy var setupNewAccount = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setupSignIn()
    }

}

