//
//  MyContactsModel.swift
//  MyContacs
//
//  Created by user on 07/06/2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseCore

struct MyContactInfo : Identifiable {
        var id = UUID().uuidString
        var name : String
        var phone : Int
        var image : String
        var url : String
        var address : String
        var birthday :Date
    }
    
//var contact1 = MyContact(name:"Mariam", phone: "+96653811432", image:"20")
//var contact2 = MyContact(name:"Njood", phone: "+96653831432", image:"21")
//var contact3 = MyContact(name:"Reema", phone: "+96653815442", image:"19")
//var contact4 = MyContact(name:"Kholod", phone: "+96656733332", image:"22")
//var contact5 = MyContact(name:"Lama", phone: "+9665375443627", image:"23")
//var contact6 = MyContact(name:"Shima", phone: "+966535539872", image:"25")
//var contact7 = MyContact(name:"Renad", phone: "+9665399885332", image:"26")
//var contact8 = MyContact(name:"Haneen", phone: "+96653775292", image:"27")
      
//var allContacts = [ contact1 , contact2 , contact3 ,  contact4 , contact5, contact6, contact7, contact8]

