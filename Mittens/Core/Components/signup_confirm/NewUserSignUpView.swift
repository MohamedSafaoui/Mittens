//
//  NewUserSignUpView.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 2/7/23.
//

import SwiftUI

struct NewUserSignUpView: View {
    @State var email: String = ""
    @State var Firstname: String = ""
    @State var Lastname: String = ""
    @State var Organization: String = ""
    @State var Zipcode: String  = ""
    var body: some View {
        
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
                        TextField("Email", text: $email)
                            .font(.title2)
                    }
                    Divider()
                        .background(Color(.darkGray))
                    
                    HStack{
                        Image(systemName: "person")
                            .padding(10)
                        TextField("Firstname", text: $Firstname)
                    }
                    Divider()
                        .background(Color(.darkGray))
                    HStack{
                        Image(systemName: "person")
                            .padding(10)
                        TextField("Lastname", text: $Lastname)
                    }
                    Divider()
                        .background(Color(.darkGray))
                    HStack{
                        Image(systemName: "building")
                            .padding(10)
                        TextField("Organization", text: $Organization)
                    }
                    Divider()
                        .background(Color(.darkGray))
                    
                    HStack{
                        Image(systemName: "building")
                            .padding(10)
                        TextField("Zipcode", text: $Zipcode)
                    }
                    Divider()
                        .background(Color(.darkGray))
                    
                    
                    
                    
                    
                }
                Button {
                    
                } label: {
                    
                    Text("Sign Up".uppercased())
                        .frame(width: 1000)
                        .font(.caption)
                        .bold()
                        .foregroundColor(.gray)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(Color.gray, lineWidth: 3.0))
                }
                Image("mittensLogo")
                    .resizable()
                    .frame(width: 500,height: 180)
                    .padding(.top,20)
                    .padding(.bottom,80)
                
                
                
                
            }
            
        }
      
    }
}

struct NewUserSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NewUserSignUpView()
    }
}
