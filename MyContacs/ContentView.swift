//
//  ContentView.swift
//  MyContacs
//
//  Created by user on 07/06/2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseCore


struct ContentView: View {
    
    @ObservedObject private var MyContactsVM = MyContactsViewModel()
    
    @State var SearchContacts = ""
    @State private var ViewAddScreen = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading,spacing: 10){
//
//                Button("+"){
//                    //
//                }
//                .padding(.horizontal, 20)
//                .frame(maxWidth:.infinity, alignment: .trailing)
//                .font(.system(size: 30))
//
                
                Text("Contacts")
                    //.frame(maxWidth: .infinity,alignment: .center )
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal, 20)
                

                TextField("Search", text:$SearchContacts)
                 .font(.body)
                 .frame(width:340,height:20)
                 .padding(10)
                 .background(Color.gray.opacity(0.20))
                 //.border(Color(UIColor.separator))
                 .cornerRadius(10)
                 .padding(.horizontal, 10)
                
                Divider().padding(.horizontal, 20)
                
                HStack{
                    
                    Image("")
                        .frame(width: 65, height: 65)
                        .background(Color.gray.opacity(0.70))
                        .clipShape(Circle())
                        .padding()
                    
                    VStack(alignment: .leading){
                        Text ("Mariam Ahmed")
                            .font (.title2)
                            .bold()
                            .padding(.vertical, 1)
                        Text("My Card")
                            .font(.body)
                            .foregroundColor(.gray)
                            //.padding(.vertical,0.1)
                    }
                    
                }
                
                Divider().padding(.horizontal, 20)
                
                NavigationView {
                    List(MyContactsVM.TheContacts) { MyCo in
                        VStack(alignment: .leading) {
                            Text(MyCo.name).font(.title)
                            //Text(MyCo.phone).font(.subheadline)
                        }
                    }.navigationBarTitle("Contacts")
                        .onAppear() {
                            self.MyContactsVM.fetchData()
                        }
//                        .toolbarItems(placemenet:.primaryAction) {
//                            Button(action:{ViewAddScreen.toggle()}, label:{
//                                Image(systemName:"plus")
//                            })
//                        }
                }.padding(.horizontal, 20)
                
//                .sheet(findNavigator(isPresented: $ViewAddScreen)){
//                        AddContactView()
//                    }
//                    .onAppear(){
//                        self.MyContactsVM.subscribe()
//                    }
//                    .onDisappear(){
//                        self.MyContactsVM.unsubscribe()
//                    }
                
               
//                ForEach(allContacts) { contacts in
//
//                        VStack(alignment: .leading){
//                            Text (contacts.name)
//                                .font (.title3)
//                                .padding(10)
//                                .bold()
//                        }
//
//                     Divider()
//
//                }.padding(.horizontal, 20)
                
            } .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
