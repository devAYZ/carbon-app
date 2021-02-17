//
//  UserDetails.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.

import Foundation

struct UserDetails: Codable {
    let id: String
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    let phoneNumber: String
    let username: String
}
