//
//  AddContactView.swift
//  MyContacs
//
//  Created by user on 08/06/2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseCore


struct AddContactView: View {
    
    @ObservedObject private var MyContactsVM = MyContactsViewModel()
    
    @StateObject var AddContactsVM = AddContactViewModel()
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("contact")){
                    TextField("Name", text: MyContactsVM.name)
                    TextField("Phone", text: MyContactsVM.phone,Formatter:NumberFormatter())
                    TextField("Image", text: MyContactsVM.image)
                    TextField("url", text: MyContactsVM.url)
                    TextField("adress", text: MyContactsVM.adress)
                    TextField("Birthday", text: MyContactsVM.birthday ,Formatter:DateFormatter())
                    
                }
                .navigationBarTitle("add contact", displaymode: .inline)
                .navigationBarItems(
                    leading: Button(action:{handleCancelTapped()}, label:{
                        Text("Cancel")
                    }),
                    trailing: Button(action:{hanedleDoneTapped()}, label:{
                        Text("Done")
                    })
                )
            }
        }
        
        func handleCancelTapped(){
            dismiss()
        }
        
        func hanedleDoneTapped(){
            AddContactsVM.save()
            dismiss()
            
        }
        
//        func dismiss(){
//            presentationMode.wrappedValue.dismiss()
//        }
        
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactView()
    }
}
