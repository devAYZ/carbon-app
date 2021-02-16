//
//  OnboardSlideContents.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 15/02/2021.

import Foundation
import UIKit

struct SlideContents {
    let navTitle: String
    let imageView: UIImage
    let title: String
    let body: String
    
    static let collection: [SlideContents] = [
        .init(navTitle: "", imageView: #imageLiteral(resourceName: "mobile2"), title: OnboardTextContent.slideOneTitle, body: OnboardTextContent.slideOneBody),
        .init(navTitle: "", imageView: #imageLiteral(resourceName: "atm"), title: OnboardTextContent.slideTwoTitle, body: "Carbon makes Financial services faster"),
        .init(navTitle: "", imageView:  #imageLiteral(resourceName: "users"), title: OnboardTextContent.slideThreeTitle, body: "With Carbon's market leading service")

    ]
}


