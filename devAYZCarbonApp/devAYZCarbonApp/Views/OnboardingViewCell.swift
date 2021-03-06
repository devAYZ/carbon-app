//
//  OnboardingViewCell.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 15/02/2021.

import UIKit

class OnboardingViewCell: UICollectionViewCell {
    static let identifier = "OnboardingViewCell"
    
    lazy var logo = UIImageView()
    lazy var imageView = UIImageView()
    lazy var title = UITextView()
    lazy var body = UITextView()
    lazy var button = UIButton()
    lazy var pageController = UIPageControl()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension OnboardingViewCell {
    
    func setupView() {
//        addSubview(button)
        backgroundColor = .white
//        addSubview(pageController)
        addSubview(logo)
        addSubview(imageView)
        addSubview(title)
        addSubview(body)
    }
    

    
    func configure(with slide: SlideContents) {
        
        pageController.pageIndicatorTintColor = .purple
        pageController.numberOfPages = 3
        pageController.currentPageIndicatorTintColor = .red
        pageController.translatesAutoresizingMaskIntoConstraints = false
        
        logo.image = OnboardTextContent.logoView
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        
        
        imageView.image = slide.imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.setContentCompressionResistancePriority(UILayoutPriority(1), for: .vertical)
        imageView.contentMode = .scaleAspectFit
        
        title.text = slide.title
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
//        title.backgroundColor = .systemGray
        title.isSelectable = true
        title.isEditable = true
        title.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        
        body.text = slide.body
        body.textAlignment = .center
        body.translatesAutoresizingMaskIntoConstraints = false
//        body.backgroundColor = .systemTeal
        body.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
      
        
        NSLayoutConstraint.activate([
            
            //            pageController.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            //            pageController.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            //            pageController.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            
            logo.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: 20),
            logo.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -80.0),
            logo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40.0),
            logo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40.0),
            logo.heightAnchor.constraint(equalToConstant: 50),
            logo.widthAnchor.constraint(equalToConstant: 120),
            
            imageView.bottomAnchor.constraint(equalTo: title.topAnchor, constant: -120.0),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25.0),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25.0),
            imageView.heightAnchor.constraint(equalToConstant: 220),
            imageView.widthAnchor.constraint(equalToConstant: 80),
            
            
            title.bottomAnchor.constraint(equalTo: body.topAnchor, constant: -10.0),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25.0),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25.0),
            title.heightAnchor.constraint(equalToConstant: 40),
            
            body.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor, constant: -150.0),
            body.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40.0),
            body.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40.0),
            body.heightAnchor.constraint(equalToConstant: 70),
        
//            button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50.0),
//            button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25.0),
//            button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25.0),
//            button.heightAnchor.constraint(equalToConstant: 50),
//
        ])
        
        
    }
    
    
    override func prepareForReuse() {
        
    }

}



