//
//  SignUpVCExtension.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.
//

import Foundation
import UIKit

extension SignUpViewController {
    
    func setupSignUp() {
        
        signupMessage.text = "Let's set things up. Please fill out these basic details to get started"
        signupMessage.translatesAutoresizingMaskIntoConstraints = false
        signupMessage.isEditable = false
        view.addSubview(signupMessage)
        
        
        surname.text = "Surname"
        surname.translatesAutoresizingMaskIntoConstraints = false
        surname.isEditable = false
        surname.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        view.addSubview(surname)
        
        surnameCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        surnameCell.keyboardAppearance = .dark
        surnameCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(surnameCell)
        
        firstname.text = "First name"
        firstname.translatesAutoresizingMaskIntoConstraints = false
        firstname.isEditable = false
        firstname.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        view.addSubview(firstname)
        
        firstnameCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        firstnameCell.keyboardAppearance = .dark
        firstnameCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstnameCell)
        
        username.text = "Username"
        username.translatesAutoresizingMaskIntoConstraints = false
        username.isEditable = false
        username.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        view.addSubview(username)
        
        usernameCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        usernameCell.keyboardAppearance = .dark
        usernameCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(usernameCell)
        
        phone.text = "Phone number"
        phone.translatesAutoresizingMaskIntoConstraints = false
        phone.isEditable = false
        phone.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        view.addSubview(phone)
        
        
        phoneCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        phoneCell.keyboardAppearance = .dark
        phoneCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(phoneCell)
        
        email.text = "Email"
        email.translatesAutoresizingMaskIntoConstraints = false
        email.isEditable = false
        email.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        view.addSubview(email)
        
        
        emailCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        emailCell.keyboardAppearance = .dark
        emailCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailCell)
        
        password.text = "Password"
        password.translatesAutoresizingMaskIntoConstraints = false
        password.isEditable = false
        password.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        view.addSubview(password)
        
        passwordCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        passwordCell.keyboardAppearance = .dark
        passwordCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordCell)
        
        
        termsAndCondition.text = "By continuing, you accept our Terms of Service and Privacy Policy"
        termsAndCondition.translatesAutoresizingMaskIntoConstraints = false
        termsAndCondition.textAlignment = .center
        termsAndCondition.textColor = .systemGray
        termsAndCondition.isEditable = false
        termsAndCondition.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        view.addSubview(termsAndCondition)
        
        createButton.setTitle("Create account", for: .normal)
        createButton.backgroundColor = .systemGray
        createButton.translatesAutoresizingMaskIntoConstraints = false
        createButton.layer.cornerRadius = 6
        createButton.addTarget(self, action: #selector(createAccountClicked(_:)), for: .touchUpInside)
        createButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
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
            firstnameCell.bottomAnchor.constraint(equalTo: username.topAnchor, constant: -15),
            
            username.heightAnchor.constraint(equalToConstant: 30),
            username.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            username.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            username.bottomAnchor.constraint(equalTo: usernameCell.topAnchor),
            
            usernameCell.heightAnchor.constraint(equalToConstant: 50),
            usernameCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            usernameCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            usernameCell.bottomAnchor.constraint(equalTo: phone.topAnchor, constant: -15),
            
            
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
            
            termsAndCondition.bottomAnchor.constraint(equalTo: createButton.topAnchor, constant: -5),
            termsAndCondition.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            termsAndCondition.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            termsAndCondition.heightAnchor.constraint(equalToConstant: 40),
            
            createButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -12),
            createButton.heightAnchor.constraint(equalToConstant: 50),
            createButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            createButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
            
            
        ])
    }
    
    
    
    @objc func createAccountClicked(_ sender: Any) {
        
        userPersonalDetails() { (details) in
            
            print(details.id)
            
            
            DispatchQueue.main.async {
                let copyVC = UserDetailsViewController.self
                
                copyVC.firstnameCell.text! = details.firstName
                copyVC.emailCell.text! = details.email
                copyVC.phoneCell.text! = details.phoneNumber
                copyVC.passwordCell.text! = details.password
                copyVC.idCell.text! = details.id
            }
            
            debugPrint("done")
            
            
        }
        let userDetailsVC = UINavigationController(rootViewController: UserDetailsViewController())
        present(userDetailsVC, animated: true, completion: nil)
    }
    
}
