//
//  SignUpViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.
//

import UIKit

class SignUpViewController: UIViewController {
    static let identifier = "SignUpViewController"

    
    lazy var createButton = UIButton()
    lazy var termsAndCondition = UITextView()
    lazy var passwordCell = UITextField()
    lazy var password = UITextView()
    lazy var emailCell = UITextField()
    lazy var email = UITextView()
    lazy var phoneCell = UITextField()
    lazy var phone = UITextView()
    lazy var usernameCell = UITextField()
    lazy var username = UITextView()
    lazy var firstnameCell = UITextField()
    lazy var firstname = UITextView()
    lazy var surnameCell = UITextField()
    lazy var surname = UITextView()
    lazy var signupMessage = UITextView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "Create your Carbon account"
        
        setupSignUp()
    }
    

}

