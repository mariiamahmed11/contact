//
//  MyContactsVIewModel.swift
//  MyContacs
//
//  Created by user on 07/06/2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseCore

class MyContactsViewModel: ObservableObject {
    
    
    @Published var TheContacts = [MyContactInfo]()

    
    func fetchData() {
        
        db.collection("TheContacts").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.TheContacts = documents.map { (queryDocumentSnapshot) -> MyContactInfo in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let phone = data["phone"] as? Int ?? 0
                let image = data["image"] as? String ?? ""
                let image = data["url"] as? String ?? ""
                let image = data["address"] as? String ?? ""
                let image = data["birthday"] as? Date ?? ""
                return MyContactInfo(name: name, phone: phone, image:image, url: url, address:address, birthday:birthday )
            }
        }
    }
}
