//
//  SignInVCExtension.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.

import Foundation
import UIKit

extension SignInViewController {
    func setupSignIn() {
        view.addSubview(logo)
        view.addSubview(signInWelcomeInfo)
        view.addSubview(phone)
        view.addSubview(phoneCell)
        view.addSubview(pin)
        view.addSubview(pinCell)
        view.addSubview(signInByeInfo)
        view.addSubview(setupNewAccount)
        
        logo.image = OnboardTextContent.logoView
        logo.contentMode = .scaleAspectFit
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        signInWelcomeInfo.text = "Hi there, welcome back. Please sign in"
        signInWelcomeInfo.textAlignment = .center
        signInWelcomeInfo.translatesAutoresizingMaskIntoConstraints = false
        signInWelcomeInfo.isEditable = false
        signInWelcomeInfo.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        phone.text = "Phone number"
        phone.translatesAutoresizingMaskIntoConstraints = false
        phone.isEditable = false
        phone.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        phoneCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        phoneCell.keyboardAppearance = .dark
        phoneCell.translatesAutoresizingMaskIntoConstraints = false
        let phoneCellView = UIImageView()
        phoneCellView.image = #imageLiteral(resourceName: "icons8-nigeria")
        phoneCell.rightView = phoneCellView
        phoneCell.rightViewMode = .always
        
        pin.text = "PIN"
        pin.translatesAutoresizingMaskIntoConstraints = false
        pin.isEditable = false
        pin.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        pinCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        pinCell.keyboardAppearance = .dark
        pinCell.translatesAutoresizingMaskIntoConstraints = false
        pinCell.isSecureTextEntry = true
        let pinCellView = UIButton(type: .system)
        pinCellView.setTitle("Forgot PIN?", for: .normal)
        pinCellView.setTitleColor(.purple, for: .normal)
        pinCellView.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        pinCell.rightView = pinCellView
        pinCell.rightViewMode = .always
        
        setupNewAccount.setTitle("Setup new account", for: .normal)
        setupNewAccount.addTarget(self, action: #selector( setUpClicked(_:) ) , for: .touchUpInside )
        setupNewAccount.translatesAutoresizingMaskIntoConstraints = false
        setupNewAccount.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        //setupNewAccount
        
        signInByeInfo.text = "New to carbon?"
        signInByeInfo.textAlignment = .right
        signInByeInfo.translatesAutoresizingMaskIntoConstraints = false
        signInByeInfo.isEditable = false
        signInByeInfo.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        

        
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50),
            logo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110.0),
            logo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110.0),
            logo.heightAnchor.constraint(equalToConstant: 40),
            
            signInWelcomeInfo.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 5),
            signInWelcomeInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signInWelcomeInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            signInWelcomeInfo.heightAnchor.constraint(equalToConstant: 30),
            
            phone.topAnchor.constraint(equalTo: signInWelcomeInfo.bottomAnchor, constant: 20),
            phone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            phone.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            phone.heightAnchor.constraint(equalToConstant: 30),
            
            phoneCell.topAnchor.constraint(equalTo: phone.bottomAnchor),
            phoneCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            phoneCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            phoneCell.heightAnchor.constraint(equalToConstant: 50),
            
            pin.topAnchor.constraint(equalTo: phoneCell.bottomAnchor, constant: 15),
            pin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            pin.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pin.heightAnchor.constraint(equalToConstant: 30),
            
            pinCell.topAnchor.constraint(equalTo: pin.bottomAnchor),
            pinCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            pinCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            pinCell.heightAnchor.constraint(equalToConstant: 50),
            
            
            setupNewAccount.heightAnchor.constraint(equalToConstant: 40),
            setupNewAccount.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 10),
            setupNewAccount.centerYAnchor.constraint(equalTo: signInByeInfo.centerYAnchor),
            
            setupNewAccount.leadingAnchor.constraint(equalTo: signInByeInfo.trailingAnchor),
            setupNewAccount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            
            
            
            signInByeInfo.heightAnchor.constraint(equalToConstant: 35),
            signInByeInfo.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 10),
            signInByeInfo.centerYAnchor.constraint(equalTo: setupNewAccount.centerYAnchor),
            signInByeInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signInByeInfo.trailingAnchor.constraint(equalTo: setupNewAccount.leadingAnchor),

            
            

        ])
    }
    
    
    @objc func setUpClicked(_ sender: Any) {
        
        let signUpVC = SignUpViewController()
        present(signUpVC, animated: true, completion: nil)
        
//        self.navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
}
