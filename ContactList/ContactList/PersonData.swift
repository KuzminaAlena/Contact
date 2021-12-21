//
//  PersonData.swift
//  ContactList
//
//  Created by Алена on 09.12.2021.
//

import Foundation
 
class PersonData {
  
    var personDataArray: [PersonModel] = [
        PersonModel(firstName: "Alan", lastName: "Smith", email: "alansmith@gmail.com", phoneNumber: "+789937478494"),
        PersonModel(firstName: "Kate", lastName: "Apple", email: "kateapple@gmail.com", phoneNumber: "+7483758457"),
        PersonModel(firstName: "Mary", lastName: "Christmass", email: "mary@gmail.com", phoneNumber: "+792167236"),
        PersonModel(firstName: "Pablo", lastName: "Escobar", email: "pabloescobar@mail.com", phoneNumber: "+9773385724857"),
        PersonModel(firstName: "Katrin", lastName: "Hurricane", email: "katrinMiumiu@gmail.com", phoneNumber: "+79346745747647"),
        PersonModel(firstName: "John", lastName: "Donn", email: "johndonn@gmail.com", phoneNumber: "+219853583895")
    ]
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

