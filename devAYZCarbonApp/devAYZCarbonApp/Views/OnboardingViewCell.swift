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
//        contentView.backgroundColor = .systemBlue
//        contentView.addSubview(imageView)
//
        setupView()
    }
    
    private var imageView: UIImageView = {
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFit
//        myImageView.image = #imageLiteral(resourceName: "atm")
        myImageView.image = #imageLiteral(resourceName: "users")
        
        return myImageView
    }()
    
    func setupView() {
        backgroundColor = .white
        addSubview(imageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.frame = CGRect(x: 20,
                                 y: contentView.frame.height / 20,
                                 width: contentView.frame.width - 20,
                                 height: contentView.frame.height - 20  )
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
