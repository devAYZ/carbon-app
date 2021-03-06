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
        .init(navTitle: "Skip", imageView: #imageLiteral(resourceName: "mobile2"), title: OnboardTextContent.slideOneTitle, body: OnboardTextContent.slideOneBody),
        .init(navTitle: "Sign in", imageView: #imageLiteral(resourceName: "atm"), title: OnboardTextContent.slideTwoTitle, body: "Carbon makes Financial services faster, cheaper and more convenient. You can access the app 24/7, wherever you are."),
        .init(navTitle: "Sign in", imageView:  #imageLiteral(resourceName: "users"), title: OnboardTextContent.slideThreeTitle, body: "With Carbon's market-leading service already used by millions of people just like you, you're in a very good company.")

    ]
}


