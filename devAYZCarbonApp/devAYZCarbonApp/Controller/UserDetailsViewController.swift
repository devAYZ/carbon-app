//
//  UserDetailsViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.
//

import UIKit

class UserDetailsViewController: UIViewController {
    static let identifier = "UserDetailsViewController"
    
//    lazy var success = UITextView()
    lazy var nextButton = UIButton()
    lazy var idCell = UITextView()
    lazy var id = UITextView()
    lazy var emailCell = UITextView()
    lazy var email = UITextView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Personal details"
        view.backgroundColor = .white
        
        showUserPersonalDetails()
    }

}

extension UserDetailsViewController {
    
    func showUserPersonalDetails(){
        
        
        
        
        email.text = "E-mail:"
        email.translatesAutoresizingMaskIntoConstraints = false
        email.isEditable = false
        email.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(email)
        
        
        emailCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        emailCell.textColor = .systemGray
        emailCell.text = "Display: 'e-mail' from Network Call"
        emailCell.isEditable = false
        emailCell.isSelectable = false
        emailCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailCell)
        
        
        id.text = "ID:"
        id.translatesAutoresizingMaskIntoConstraints = false
        id.isEditable = false
        id.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(id)
        
        idCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        idCell.textColor = .systemGray
        idCell.text = "Display: 'id' from Network Call"
        idCell.isEditable = false
        idCell.isSelectable = false
        idCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(idCell)
        
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = #colorLiteral(red: 0.4956101179, green: 0.3279817104, blue: 0.8073155284, alpha: 1)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.layer.cornerRadius = 6
//        nextButton.addTarget(self, action: #selector(createAccountClicked(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
        
        
        
        NSLayoutConstraint.activate([
            
            email.heightAnchor.constraint(equalToConstant: 32),
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            email.bottomAnchor.constraint(equalTo: emailCell.topAnchor),
            
            emailCell.heightAnchor.constraint(equalToConstant: 45),
            emailCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            emailCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            emailCell.bottomAnchor.constraint(equalTo: id.topAnchor, constant: -10),
            
            
            id.heightAnchor.constraint(equalToConstant: 32),
            id.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            id.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            id.bottomAnchor.constraint(equalTo: idCell.topAnchor),
            
            idCell.heightAnchor.constraint(equalToConstant: 45),
            idCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            idCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            idCell.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -10),
            
            nextButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -12),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
        
        ])
        
    }
}
