//
//  OnboardingViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 15/02/2021.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    public let slides: [SlideContents] = SlideContents.collection
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupCollectionView()
    }
    
//    @objc func selectorX() { }
    
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
        collectionView.backgroundColor = .systemPurple
        self.view.addSubview(collectionView)
        
        
//        let navLabel = UILabel(frame: CGRect(x: 0,y: 0, width: view.frame.width - 70, height: view.frame.height))
//        navLabel.setTitle("Sign In", for: .normal)
//        navLabel.setTitleColor( #colorLiteral(red: 0.4956101179, green: 0.3279817104, blue: 0.8073155284, alpha: 1), for: .normal)
//        navLabel.isEnabled = true
//
//        navigationItem.titleView = navLabel.titleLabel
//        var navLabelText = ""
//        let slideC: SlideContents
//        let slideCC = slideC.title
//        if slideCC == "0" {
//            navLabelText = "Skip"
        //        }
        
        
        let navLabel = UILabel(frame: CGRect(x: 0,y: 0, width: view.frame.width - 70, height: view.frame.height))
        navLabel.text = "Sign in"
        navLabel.textAlignment = .right
        navLabel.textColor =  #colorLiteral(red: 0.4956101179, green: 0.3279817104, blue: 0.8073155284, alpha: 1)
        navLabel.isUserInteractionEnabled = true
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(signInClicked(_:)))
        navLabel.addGestureRecognizer(guestureRecognizer)
        
        navigationItem.titleView = navLabel
        
        
        
    }
    
    
    @objc func signInClicked(_ sender: Any) {
        //        print("Sign In clicked")
        let signInVC = SignInViewController()
        present(signInVC, animated: true, completion: nil)
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
//        print("User tapped on item \(indexPath.row)")
    }
    
    
    
}
