//
//  OnboardingViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 15/02/2021.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    private let slides: [SlideContents] = SlideContents.collection
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .purple
        setupCollectionView()
        
    }
    
}

extension OnboardingViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func setupCollectionView(){
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(OnboardingViewCell.self, forCellWithReuseIdentifier: OnboardingViewCell.identifier)
        collectionView.backgroundColor = UIColor.white
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.isPagingEnabled = true
        collectionView.frame = view.bounds
        self.view.addSubview(collectionView)
        
        
//        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
//            collectionView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
//            collectionView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
//            collectionView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
//        ])
        
        navigationItem.title = "Home"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingViewCell.identifier, for: indexPath) as! OnboardingViewCell
        let slide = slides[indexPath.item]
        myCell.configure(with: slide)
        return myCell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = collectionView.bounds.width
        let itemHeight = collectionView.bounds.height
        
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        print("User tapped on item \(indexPath.row)")
    }
    
    
    
}


//extension UIView {
//    
//    func anchorToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil) {
//        
//        anchorWithConstantsToTop(top: top, left: left, bottom: bottom, right: right, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
//    }
//    
//    func anchorWithConstantsToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0) {
//        
//        translatesAutoresizingMaskIntoConstraints = false
//        
//        if let top = top {
//            topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
//        }
//        
//        if let bottom = bottom {
//            bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant).isActive = true
//        }
//        
//        if let left = left {
//            leftAnchor.constraint(equalTo: left, constant: leftConstant).isActive = true
//        }
//        
//        if let right = right {
//            rightAnchor.constraint(equalTo: right, constant: -rightConstant).isActive = true
//        }
//        
//    }
//    
//}
