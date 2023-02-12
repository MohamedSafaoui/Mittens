//
//  MainScreenView.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI


struct MainScreenView: View {
    @EnvironmentObject var titleTest: TitleTest
  //  @EnvironmentObject var Emailuser: emailuser
    @State private var emailEntry = ""
    @State private var showMenu = false
    @State private var showSettings: Bool = false
    
    let usersEmail: [String] = ["joe","mike"]

  
    
    var body: some View {
        
        NavigationStack{
            VStack{
                VStack{

                    ZStack(alignment: .topLeading){
                        
                        MainScreenWelcome(titleOne: "\(self.titleTest.title)", titleTwo: "")
                              .ignoresSafeArea()
                       
                        NavigationLink(destination: SettingsPage()) {
                            Image(systemName: "gearshape.2")
                        }
                        .padding(.horizontal,15)
                        .navigationViewStyle(.columns)
                    }
                    Text("Thank you for volunteering! ")
                        .font(.custom("Vanilla Caramel", size: 55))
                        .padding(-9)
                    
                    
                }
                //email bar with sign in button
                LoginInfo()
                VStack{
                    
                    //Header with titles(name,time,clockingout)
                    TitleInfo()
                }
                ScrollView{
                    

                        
                        ForEach(0..<usersEmail.count) { Index in
                            
                            UserRow( usermail: usersEmail[Index])
                        }
                 
                        
                    
                    }
                }
            }
        }
        
    }

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView().environmentObject(TitleTest())
    }
}


struct TitleInfo: View {
    var body: some View {
        HStack{
            Spacer()
            Text("Name")
                .font(.custom("Vanilla Caramel", size: 30))
                .foregroundColor(Color.red)
                .padding(.horizontal,150)
                
            Spacer()
            Text("Time")
                .font(.custom("Vanilla Caramel", size: 30))
                .foregroundColor(Color.red)
                
            Spacer()
            Text("Clocking out?")
                .font(.custom("Vanilla Caramel", size: 30))
                .foregroundColor(Color.red)
            Spacer()
        }
    }
}

struct LoginInfo: View {
    @State private var emailEntry = ""
    var body: some View {
        
        // make it that it need to be vailied email adress. 
        
        HStack{
            ImputField(imagename: "envelope",
                       placeholdertext: "Please Enter Your Email to Clock In:", text: $emailEntry)
            
            
            
            
            NavigationLink(destination: NewUserSignUpView()) {
                Text("Sign in".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                
                
                
                    .padding()
                
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0))
                
                    .padding()
            }
            
            
            
            
            
            
            
        }
    }
}
