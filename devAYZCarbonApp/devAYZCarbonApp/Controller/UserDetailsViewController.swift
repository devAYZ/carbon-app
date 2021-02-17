//
//  UserDetailsViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.
//

import UIKit

class UserDetailsViewController: UIViewController {
    static let identifier = "UserDetailsViewController"
    
    lazy var success = UITextView()
    lazy var nextButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Personal details"
        view.backgroundColor = .white
        
        showUserPersonalDetails()
    }

}

extension UserDetailsViewController {
    
    func showUserPersonalDetails(){
        
        success.text = "Account Created Successfully"
        success.isEditable = false
        success.font = UIFont.systemFont(ofSize: 15, weight: .bold)
//        success.textAlignment = .center
        success.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(success)
        
        
        
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = #colorLiteral(red: 0.4956101179, green: 0.3279817104, blue: 0.8073155284, alpha: 1)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.layer.cornerRadius = 6
//        nextButton.addTarget(self, action: #selector(createAccountClicked(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
        
        
        
        NSLayoutConstraint.activate([
            
//            success.heightAnchor.constraint(equalToConstant: 40),
//            success.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
//            success.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            success.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
            
            nextButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -12),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
        
        ])
        
    }
}
