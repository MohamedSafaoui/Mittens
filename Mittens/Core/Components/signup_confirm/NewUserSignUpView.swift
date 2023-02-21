//
//  NewUserSignUpView.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 2/7/23.
//

import SwiftUI

struct NewUserSignUpView: View {
    @State var email: String = "VolunteerTest35@icloud.com"
    @State var Firstname: String = ""
    @State var Lastname: String = ""
    @State var Organization: String = ""
    @State var Zipcode: String  = ""
    var body: some View {
        NavigationStack{
            VStack {
                VStack{
                    MainScreenWelcome(titleOne: "Welcome!", titleTwo: "Create your profile")
                    
                        .ignoresSafeArea()
                    
                    
                }
                Spacer()
                VStack{
                    VStack{
                        
                        HStack{
                            
                            Image(systemName: "envelope")
                                .padding(10)
                            TextField("", text: $email)
                            
                                .font(.title2)
                            
                            
                            
                        }
                        Divider()
                            .background(Color(.darkGray))
                        
                        
                        
                        HStack{
                            Image(systemName: "person")
                                .padding(10)
                            TextField("Firstname", text: $Firstname)
                                .font(.title2)
                        }
                        Divider()
                            .background(Color(.darkGray))
                        HStack{
                            Image(systemName: "person")
                                .padding(10)
                            TextField("Lastname", text: $Lastname)
                                .font(.title2)
                        }
                        Divider()
                            .background(Color(.darkGray))
                        HStack{
                            Image(systemName: "building")
                                .padding(10)
                            TextField("Organization", text: $Organization)
                                .font(.title2)
                        }
                        Divider()
                            .background(Color(.darkGray))
                        
                        HStack{
                            Image(systemName: "building")
                                .padding(10)
                            TextField("Zipcode (optional) ", text: $Zipcode)
                                .font(.title2)
                        }
                        Divider()
                            .background(Color(.darkGray))
                        
                        
                        
                        
                        
                    }
                    Spacer()
                    VStack{
                        HStack{
                            
                            Button {
                                
                            } label: {
                                Spacer()
                                Text("cancel".uppercased())
                                    .font(.title3)
                                    .frame(width: 100 , height: 20)
                                    .font(.caption)
                                    .bold()
                                    .foregroundColor(.red)
                                    .padding()
                                    .background(
                                        Capsule()
                                            .stroke(Color.red, lineWidth: 3.0))
                                    .padding(.leading,10)
                                Spacer()
                                
                                
                                
                                
                                NavigationLink(destination: MainScreenView()) {
                                    Text("Sign Up")
                                        .font(.title3)
                                        .frame(width: 900, height: 20)
                                        .font(.caption)
                                        .bold()
                                        .foregroundColor(.blue)
                                        .padding()
                                        .background(
                                            Capsule()
                                                .stroke(Color.blue, lineWidth: 3.0))
                                    Spacer()
                                    
                                    
                                    //                            Button {
                                    //
                                    //
                                    //                            } label: {
                                    //
                                    //                                Spacer()
                                    //                                Text("Sign Up".uppercased())
                                    //                                    .font(.title3)
                                    //                                    .frame(width: 900, height: 20)
                                    //                                    .font(.caption)
                                    //                                    .bold()
                                    //                                    .foregroundColor(.blue)
                                    //                                    .padding()
                                    //                                    .background(
                                    //                                        Capsule()
                                    //                                            .stroke(Color.blue, lineWidth: 3.0))
                                    //                                    Spacer()
                                    //
                                    //                            }
                                    //
                                    //
                                    //                        }
                                }
                            }
                            
                        }
                        Spacer()
                        Image("mittensLogo")
                            .resizable()
                            .frame(width: 700,height: 300)
                            .padding(.top,20)
                            .padding(.bottom,20)
                        
                    }
                    
                    
                }
            }
        }
    }
}
struct NewUserSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NewUserSignUpView()
    }
}
