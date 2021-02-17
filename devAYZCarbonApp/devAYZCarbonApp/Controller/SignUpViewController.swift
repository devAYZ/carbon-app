//
//  SignUpViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.
//

import UIKit

class SignUpViewController: UIViewController {
    static let identifier = "SignUpViewController"

//    var signUpWelcomeInfo = UITextView()
    
    lazy var createButton = UIButton()
    lazy var termsAndCondition = UITextView()
    lazy var passwordCell = UITextField()
    lazy var password = UITextView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "Create your Carbon account"
        
        setupSignUp()
    }
    

}

extension SignUpViewController {
    
    func setupSignUp() {
//        view.addSubview(signUpWelcomeInfo)
        
        password.text = "Password"
        password.translatesAutoresizingMaskIntoConstraints = false
        password.isEditable = false
        view.addSubview(password)
        
        passwordCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        passwordCell.keyboardAppearance = .dark
        passwordCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordCell)
        
        
        termsAndCondition.text = "By continuing, you accept our Terms of Service and Privacy Policy"
        termsAndCondition.translatesAutoresizingMaskIntoConstraints = false
        termsAndCondition.textAlignment = .center
        termsAndCondition.isEditable = false
        view.addSubview(termsAndCondition)
        
        createButton.setTitle("Create account", for: .normal)
        createButton.backgroundColor = .systemGray
        createButton.translatesAutoresizingMaskIntoConstraints = false
        createButton.layer.cornerRadius = 7
        view.addSubview(createButton)
        
        
        
    
        NSLayoutConstraint.activate([
            
            password.heightAnchor.constraint(equalToConstant: 30),
            password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            password.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            password.bottomAnchor.constraint(equalTo: passwordCell.topAnchor),
            
            
            passwordCell.heightAnchor.constraint(equalToConstant: 50),
            passwordCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            passwordCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            passwordCell.bottomAnchor.constraint(equalTo: termsAndCondition.topAnchor, constant: -25),
            
            termsAndCondition.bottomAnchor.constraint(equalTo: createButton.topAnchor, constant: -2),
            termsAndCondition.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            termsAndCondition.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            termsAndCondition.heightAnchor.constraint(equalToConstant: 40),
            
            createButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
            createButton.heightAnchor.constraint(equalToConstant: 50),
            createButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            createButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
            
        
        ])
    }
    
}
