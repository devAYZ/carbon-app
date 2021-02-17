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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupSignIn()
    }
    

}

extension SignInViewController {
    func setupSignIn() {
        view.addSubview(logo)
        view.addSubview(signInWelcomeInfo)
        view.addSubview(phone)
        view.addSubview(phoneCell)
        view.addSubview(pin)
        view.addSubview(pinCell)
        view.addSubview(signInByeInfo)
        
        logo.image = OnboardTextContent.logoView
        logo.contentMode = .scaleAspectFit
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        signInWelcomeInfo.text = "Hi there, welcome back. Please sign in"
        signInWelcomeInfo.textAlignment = .center
        signInWelcomeInfo.translatesAutoresizingMaskIntoConstraints = false
//        signInWelcomeInfo.isEditable = true
        
        phone.text = "Phone number"
        phone.translatesAutoresizingMaskIntoConstraints = false
        
        phoneCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        phoneCell.keyboardAppearance = .dark
//        phoneCell.borderStyle = .line
        phoneCell.translatesAutoresizingMaskIntoConstraints = false
        let phoneCellView = UIImageView()
        phoneCellView.image = #imageLiteral(resourceName: "icons8-nigeria")
        phoneCell.rightView = phoneCellView
        
    
        phoneCell.rightViewMode = .always
        
        pin.text = "PIN"
        pin.translatesAutoresizingMaskIntoConstraints = false
        
        pinCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        pinCell.keyboardAppearance = .dark
        pinCell.translatesAutoresizingMaskIntoConstraints = false
        let pinCellView = UIButton()
        pinCellView.setTitle("Forgot PIN?", for: .normal)
        pinCellView.setTitleColor(.purple, for: .normal)
        pinCell.rightView = pinCellView
        pinCell.rightViewMode = .always
        
        signInByeInfo.text = "New to carbon? Setup new account"
        signInByeInfo.textAlignment = .center
//        signInByeInfo.backgroundColor = .red
        signInByeInfo.translatesAutoresizingMaskIntoConstraints = false

        
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
            
            signInByeInfo.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 20),
            signInByeInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signInByeInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            signInByeInfo.heightAnchor.constraint(equalToConstant: 40),




        ])
    }
}
