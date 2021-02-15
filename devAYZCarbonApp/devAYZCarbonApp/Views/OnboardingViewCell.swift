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
    
    lazy var imageView = UIImageView()
    
    
    func setupView() {
        backgroundColor = .white
        addSubview(imageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
    func configure(with slide: SlideContents) {
        
        imageView.image = slide.imageView
        imageView.contentMode = .scaleAspectFit
        
        imageView.frame = CGRect(x: 20,
                                 y: contentView.frame.height / 20,
                                 width: contentView.frame.width - 20,
                                 height: contentView.frame.height - 20  )
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
