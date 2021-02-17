//
//  OnboardingViewController.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 15/02/2021.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    public let slides: [SlideContents] = SlideContents.collection
    lazy var button = UIButton()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
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
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.isPagingEnabled = true
        collectionView.frame = view.bounds
        collectionView.backgroundColor = .white
        self.view.addSubview(collectionView)
        
        
        let navLabel = UILabel(frame: CGRect(x: 0,y: 0, width: view.frame.width - 70, height: view.frame.height))
        navLabel.text = "Sign in"
        navLabel.textAlignment = .right
        navLabel.textColor =  #colorLiteral(red: 0.4956101179, green: 0.3279817104, blue: 0.8073155284, alpha: 1)
        navLabel.isUserInteractionEnabled = true
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(signInClicked(_:)))
        navLabel.addGestureRecognizer(guestureRecognizer)
        navigationItem.titleView = navLabel
        
        
        button.setTitle(OnboardTextContent.slidesButtonText, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4956101179, green: 0.3279817104, blue: 0.8073155284, alpha: 1)
        button.isEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(signUpClicked(_:)), for: .touchUpInside)
        button.isPointerInteractionEnabled = true
        self.view.addSubview(button)
        
        
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            button.heightAnchor.constraint(equalToConstant: 50)
            
        ])

    }
    
    @objc func signInClicked(_ sender: Any) {
        let signInVC = SignInViewController()
        present(signInVC, animated: true, completion: nil)
    }
    
    @objc func signUpClicked(_ sender: Any) {
//        print("Signing Up clicked.....")
        let signUpVC = UINavigationController(rootViewController: SignUpViewController())
        present(signUpVC, animated: true, completion: nil)
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
