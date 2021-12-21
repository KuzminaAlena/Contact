//
//  PersonModel.swift
//  ContactList
//
//  Created by Алена on 09.12.2021.
//

import Foundation

struct PersonModel {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String

    var fullName: String {
        return firstName + " " + lastName
    }
}

