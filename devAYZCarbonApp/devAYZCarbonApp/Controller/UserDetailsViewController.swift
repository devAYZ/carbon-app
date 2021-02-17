//
//  UserDetailsViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.

import UIKit

class UserDetailsViewController: UIViewController {
    static let identifier = "UserDetailsViewController"
    
    lazy var nextButton = UIButton()
    static var idCell = UITextView()
    lazy var id = UITextView()
    static var passwordCell = UITextView()
    lazy var password = UITextView()
    static var phoneCell = UITextView()
    lazy var phone = UITextView()
    static var emailCell = UITextView()
    lazy var email = UITextView()
    static var firstnameCell = UITextView()
    lazy var firstname = UITextView()
    static var lastnameCell = UITextView()
    lazy var lastname = UITextView()
    lazy var savedInfo = UITextView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Personal details"
        view.backgroundColor = .white
        
        showUserPersonalDetails()
    }

}

