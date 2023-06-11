//
//  AddContactViewModel.swift
//  MyContacs
//
//  Created by user on 08/06/2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseCore
import Foundation



class AddContactViewModel: Observabledbiect {

    @Published var TheContacts = [MyContactInfo]()
    
    //@Published var book: Book = Book(title: "", author: "", numberOfPages: 0)
    
    private var dh = Firestore.firestore()
    
    
    func addcontact(TheContacts : MyContactInfo){
        do {
            let _ = try db.collection("MyContactInfo").addDocument(from:TheContacts)
        
        }
        catch {
            print(error)
        }
    }
    
    func save (){
        addcontact(TheContacts : MyContactInfo)
    }
}


