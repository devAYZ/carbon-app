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
    lazy var genderCell = UITextField()
    lazy var gender = UITextView()
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

extension SignUpViewController {
    
    func setupSignUp() {
//        view.addSubview(signUpWelcomeInfo)
        
        signupMessage.text = "Let's set things up. Please fill out these basic details to get started"
        signupMessage.translatesAutoresizingMaskIntoConstraints = false
        signupMessage.isEditable = false
//        signupMessage.textAlignment = .center
        view.addSubview(signupMessage)
        
        
        surname.text = "Surname"
        surname.translatesAutoresizingMaskIntoConstraints = false
        surname.isEditable = false
        view.addSubview(surname)
        
        surnameCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        surnameCell.keyboardAppearance = .dark
        surnameCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(surnameCell)
        
        firstname.text = "First name"
        firstname.translatesAutoresizingMaskIntoConstraints = false
        firstname.isEditable = false
        view.addSubview(firstname)
        
        firstnameCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        firstnameCell.keyboardAppearance = .dark
        firstnameCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstnameCell)
        
        gender.text = "Gender"
        gender.translatesAutoresizingMaskIntoConstraints = false
        gender.isEditable = false
        view.addSubview(gender)
        
        genderCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        genderCell.keyboardAppearance = .dark
        genderCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(genderCell)
        
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
            
            signupMessage.heightAnchor.constraint(equalToConstant: 40),
            signupMessage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            signupMessage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            signupMessage.bottomAnchor.constraint(equalTo: surname.topAnchor, constant: -15),
            signupMessage.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10),
            
            surname.heightAnchor.constraint(equalToConstant: 30),
            surname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            surname.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            surname.bottomAnchor.constraint(equalTo: surnameCell.topAnchor),
            
            surnameCell.heightAnchor.constraint(equalToConstant: 50),
            surnameCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            surnameCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            surnameCell.bottomAnchor.constraint(equalTo: firstname.topAnchor, constant: -15),
            
            
            firstname.heightAnchor.constraint(equalToConstant: 30),
            firstname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            firstname.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            firstname.bottomAnchor.constraint(equalTo: firstnameCell.topAnchor),
            
            firstnameCell.heightAnchor.constraint(equalToConstant: 50),
            firstnameCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            firstnameCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            firstnameCell.bottomAnchor.constraint(equalTo: gender.topAnchor, constant: -15),
            
            gender.heightAnchor.constraint(equalToConstant: 30),
            gender.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            gender.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gender.bottomAnchor.constraint(equalTo: genderCell.topAnchor),
            
            genderCell.heightAnchor.constraint(equalToConstant: 50),
            genderCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            genderCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            genderCell.bottomAnchor.constraint(equalTo: phone.topAnchor, constant: -15),
            
            
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
