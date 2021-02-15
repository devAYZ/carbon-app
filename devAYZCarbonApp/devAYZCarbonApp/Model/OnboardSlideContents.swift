//
//  OnboardSlideContents.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 15/02/2021.

import Foundation
import UIKit

struct SlideContents {
    let imageView: UIImage
//    let title: String
//    let body: String
    
    static let collection: [SlideContents] = [
        .init(imageView: #imageLiteral(resourceName: "mobile2")),
        .init(imageView: #imageLiteral(resourceName: "atm")),
        .init(imageView: #imageLiteral(resourceName: "users"))
    ]
}


