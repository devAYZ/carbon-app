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
    lazy var emailCell = UITextField()
    lazy var email = UITextView()
    lazy var phoneCell = UITextField()
    lazy var phone = UITextView()
    
    
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
        
        phone.text = "Phone number"
        phone.translatesAutoresizingMaskIntoConstraints = false
        phone.isEditable = false
        view.addSubview(phone)
        
        
        phoneCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        phoneCell.keyboardAppearance = .dark
        phoneCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(phoneCell)
        
        email.text = "Email"
        email.translatesAutoresizingMaskIntoConstraints = false
        email.isEditable = false
        view.addSubview(email)
        
        
        emailCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        emailCell.keyboardAppearance = .dark
        emailCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailCell)
        
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
            
            
            
            phone.heightAnchor.constraint(equalToConstant: 30),
            phone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            phone.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            phone.bottomAnchor.constraint(equalTo: phoneCell.topAnchor),
            
            
            phoneCell.heightAnchor.constraint(equalToConstant: 50),
            phoneCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            phoneCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            phoneCell.bottomAnchor.constraint(equalTo: email.topAnchor, constant: -15),
            
            
            email.heightAnchor.constraint(equalToConstant: 30),
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            email.bottomAnchor.constraint(equalTo: emailCell.topAnchor),
            
            emailCell.heightAnchor.constraint(equalToConstant: 50),
            emailCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            emailCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            emailCell.bottomAnchor.constraint(equalTo: password.topAnchor, constant: -15),
            
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
