//
//  OnboardingViewCell.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 15/02/2021.

import UIKit

class OnboardingViewCell: UICollectionViewCell {
    
    static let identifier = "OnboardingViewCell"
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
//    let view = UICollectionView()
    
    lazy var logo = UIImageView()
    lazy var imageView = UIImageView()
    lazy var title = UITextView()
    lazy var body = UITextView()
    lazy var button = UIButton()
    
    
    
    func setupView() {
        backgroundColor = .white
        addSubview(logo)
        addSubview(imageView)
        addSubview(title)
        addSubview(body)
        addSubview(button)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
    func configure(with slide: SlideContents) {
        
        logo.image = OnboardTextContent.logoView
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        
        
        imageView.image = slide.imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        title.text = slide.title
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        title.backgroundColor = .systemGray
        
        body.text = slide.body
        body.textAlignment = .center
//        body.contentInset = CGRect(x: 0, y: 10, width: 0, height: 0)
        body.translatesAutoresizingMaskIntoConstraints = false
        body.backgroundColor = .systemTeal
    
        
        button.setTitle(OnboardTextContent.slidesButtonText, for: .normal)
        button.backgroundColor = .systemPurple
        button.isEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            
            logo.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            logo.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -80.0),
            logo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50.0),
            logo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50.0),
            logo.heightAnchor.constraint(equalToConstant: 40),
            logo.widthAnchor.constraint(equalToConstant: 80),
            
            
            
            imageView.bottomAnchor.constraint(equalTo: title.topAnchor, constant: -120.0),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25.0),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25.0),
            imageView.heightAnchor.constraint(equalToConstant: 220),
            imageView.widthAnchor.constraint(equalToConstant: 80),
            
            
            title.bottomAnchor.constraint(equalTo: body.topAnchor, constant: -20.0),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25.0),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25.0),
            title.heightAnchor.constraint(equalToConstant: 50),
            
            
            body.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -70.0),
            body.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25.0),
            body.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25.0),
            body.heightAnchor.constraint(equalToConstant: 70),
//            imageView.widthAnchor.constraint(equalToConstant: 80),
            
            
            button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50.0),
            button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25.0),
            button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25.0),
            button.heightAnchor.constraint(equalToConstant: 50),
            
            
            
        ])
        
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
