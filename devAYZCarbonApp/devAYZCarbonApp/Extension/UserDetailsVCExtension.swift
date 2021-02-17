//
//  UserDetailsVCExtension.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.

import Foundation
import UIKit

extension UserDetailsViewController {
    
    func showUserPersonalDetails(){
        
        let copyVC = UserDetailsViewController.self
        
        
        
        savedInfo.text = "Hi there, you have created your account successfully!"
        savedInfo.translatesAutoresizingMaskIntoConstraints = false
        savedInfo.isEditable = false
        view.addSubview(savedInfo)
        
        lastname.text = "Surname:"
        lastname.translatesAutoresizingMaskIntoConstraints = false
        lastname.isEditable = false
        lastname.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(lastname)
        
        
        copyVC.lastnameCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        copyVC.lastnameCell.textColor = .systemGray
        copyVC.lastnameCell.text = "Surname name here"
        copyVC.lastnameCell.font = UIFont.systemFont(ofSize: 20)
        copyVC.lastnameCell.isEditable = false
        copyVC.lastnameCell.isSelectable = false
        copyVC.lastnameCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(copyVC.lastnameCell)
        
        
        firstname.text = "First name:"
        firstname.translatesAutoresizingMaskIntoConstraints = false
        firstname.isEditable = false
        firstname.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(firstname)
        
        
        copyVC.firstnameCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        copyVC.firstnameCell.textColor = .systemGray
        copyVC.firstnameCell.text = "First name here"
        copyVC.firstnameCell.font = UIFont.systemFont(ofSize: 20)
        copyVC.firstnameCell.isEditable = false
        copyVC.firstnameCell.isSelectable = false
        copyVC.firstnameCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(copyVC.firstnameCell)
        
        
        email.text = "E-mail:"
        email.translatesAutoresizingMaskIntoConstraints = false
        email.isEditable = false
        email.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(email)
        
        
        copyVC.emailCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        copyVC.emailCell.textColor = .systemGray
        copyVC.emailCell.text = "E-mail here"
        copyVC.emailCell.font = UIFont.systemFont(ofSize: 20)
        copyVC.emailCell.isEditable = false
        copyVC.emailCell.isSelectable = false
        copyVC.emailCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(copyVC.emailCell)
        
        phone.text = "Phone number:"
        phone.translatesAutoresizingMaskIntoConstraints = false
        phone.isEditable = false
        phone.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(phone)
        
        
        copyVC.phoneCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        copyVC.phoneCell.textColor = .systemGray
        copyVC.phoneCell.text = "Phone number here"
        copyVC.phoneCell.font = UIFont.systemFont(ofSize: 20)
        copyVC.phoneCell.isEditable = false
        copyVC.phoneCell.isSelectable = false
        copyVC.phoneCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(copyVC.phoneCell)
        
        
        password.text = "Password:"
        password.translatesAutoresizingMaskIntoConstraints = false
        password.isEditable = false
        password.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(password)
        
        
        copyVC.passwordCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        copyVC.passwordCell.textColor = .systemGray
        copyVC.passwordCell.text = "Password here"
        copyVC.passwordCell.isEditable = false
        copyVC.passwordCell.font = UIFont.systemFont(ofSize: 20)
        copyVC.passwordCell.isSelectable = false
        copyVC.passwordCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(copyVC.passwordCell)
        
        
        id.text = "ID:"
        id.translatesAutoresizingMaskIntoConstraints = false
        id.isEditable = false
        id.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(id)
        
        copyVC.idCell.backgroundColor = #colorLiteral(red: 0.952880919, green: 0.9486935735, blue: 0.9692631364, alpha: 1)
        copyVC.idCell.textColor = .systemGray
        copyVC.idCell.font = UIFont.systemFont(ofSize: 20)
        copyVC.idCell.text = "ID here"
        copyVC.idCell.isEditable = false
        copyVC.idCell.isSelectable = false
        copyVC.idCell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(copyVC.idCell)
        
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = #colorLiteral(red: 0.4956101179, green: 0.3279817104, blue: 0.8073155284, alpha: 1)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.layer.cornerRadius = 6
        view.addSubview(nextButton)
        
        
        
        
        
        NSLayoutConstraint.activate([
            
            savedInfo.heightAnchor.constraint(equalToConstant: 30),
            savedInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            savedInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            savedInfo.bottomAnchor.constraint(equalTo: lastname.topAnchor, constant: -10),
            
            
            
            lastname.heightAnchor.constraint(equalToConstant: 32),
            lastname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            lastname.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lastname.bottomAnchor.constraint(equalTo: copyVC.lastnameCell.topAnchor),
            
            
            copyVC.lastnameCell.heightAnchor.constraint(equalToConstant: 45),
            copyVC.lastnameCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            copyVC.lastnameCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            copyVC.lastnameCell.bottomAnchor.constraint(equalTo: firstname.topAnchor, constant: -10),
            
            
            firstname.heightAnchor.constraint(equalToConstant: 32),
            firstname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            firstname.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            firstname.bottomAnchor.constraint(equalTo: copyVC.firstnameCell.topAnchor),
            
            
            copyVC.firstnameCell.heightAnchor.constraint(equalToConstant: 45),
            copyVC.firstnameCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            copyVC.firstnameCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            copyVC.firstnameCell.bottomAnchor.constraint(equalTo: email.topAnchor, constant: -10),
            
            email.heightAnchor.constraint(equalToConstant: 32),
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            email.bottomAnchor.constraint(equalTo: copyVC.emailCell.topAnchor),
            
            
            copyVC.emailCell.heightAnchor.constraint(equalToConstant: 45),
            copyVC.emailCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            copyVC.emailCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            copyVC.emailCell.bottomAnchor.constraint(equalTo: phone.topAnchor, constant: -10),
            
            phone.heightAnchor.constraint(equalToConstant: 32),
            phone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            phone.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            phone.bottomAnchor.constraint(equalTo: copyVC.phoneCell.topAnchor),
            
            
            copyVC.phoneCell.heightAnchor.constraint(equalToConstant: 45),
            copyVC.phoneCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            copyVC.phoneCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            copyVC.phoneCell.bottomAnchor.constraint(equalTo: password.topAnchor, constant: -10),
            
            
            password.heightAnchor.constraint(equalToConstant: 32),
            password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            password.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            password.bottomAnchor.constraint(equalTo: copyVC.passwordCell.topAnchor),
            
            copyVC.passwordCell.heightAnchor.constraint(equalToConstant: 45),
            copyVC.passwordCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            copyVC.passwordCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            copyVC.passwordCell.bottomAnchor.constraint(equalTo: id.topAnchor, constant: -10),
            
            
            id.heightAnchor.constraint(equalToConstant: 32),
            id.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            id.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            id.bottomAnchor.constraint(equalTo: copyVC.idCell.topAnchor),
            
            copyVC.idCell.heightAnchor.constraint(equalToConstant: 45),
            copyVC.idCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            copyVC.idCell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            copyVC.idCell.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -10),
            
            nextButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -12),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
            
        ])
        
    }
}

