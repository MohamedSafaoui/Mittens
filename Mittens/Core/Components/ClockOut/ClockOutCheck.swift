//
//  ClockOutCheck.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI

struct ClockOutCheck: View {
    
    @Environment(\.dismiss) var dismissScreen
    @State var UserComments: String = ""
  
    var body: some View {
        VStack {
            MainScreenWelcome(titleOne: " ", titleTwo: " Clock Out for john Doe?    ")
            
            
                .ignoresSafeArea()
            HStack(alignment: .top){
                VStack{
                    Text("Your time for today is: ")
                        .foregroundColor(.accentColor)
                    
                        .font(.custom("Vanilla Caramel", size: 30))
                        
                    
                    Text("2:43")
                        .font(.custom("Vanilla Caramel", size: 38))
                        .padding(.bottom,50)
                        .foregroundColor(.blue)
                        .underline()
                }
                
                Spacer()
                VStack{
                    Text("Total hours volunteered: ")
                        .font(.custom("Vanilla Caramel", size: 30))
                    
                    Text("2:43")
                        .font(.custom("Vanilla Caramel", size: 38))
                        .padding(.bottom,50)
                    
                        .underline()
                    
                    
                }
            }
            
            .padding(.horizontal,50)
           
                VStack{
                 
                    Text("Comments?")
                        .font(.custom("Vanilla Caramel", size: 38))
                        .padding(-10)
                        
                        TextEditor(text: $UserComments)
                            .frame(width: 500, height: 200)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.red)
                         
                            .colorMultiply(.gray.opacity(0.4))
                            .textFieldStyle(.roundedBorder)
                          
                            .cornerRadius(30)
                        
                    }
               
            
            Spacer()
            
            HStack{
                Spacer()
                
                Button {
                    dismissScreen()
                } label: {
                    ZStack{
                     
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width: 240,height: 100)
                            .cornerRadius(30)
                            .opacity(0.9)
                        Text("NO, Go Back")
                            .font(.custom("Vanilla Caramel", size: 38))
                            .foregroundColor(.white)
                            
                      
                    }
                    
                }

                
               
                Spacer()
                
                Button {
                    dismissScreen()
                } label: {
                    ZStack{
                     
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: 240,height: 100)
                            .cornerRadius(30)
                            .opacity(0.9)
                        Text("YES, Clock out")
                            .font(.custom("Vanilla Caramel", size: 38))
                            .foregroundColor(.white)
                            
                      
                    }
                }

                
               
            Spacer()
            }
            .padding(.bottom,30)
        }
        
    }
}
struct ClockOutCheck_Previews: PreviewProvider {
    static var previews: some View {
        ClockOutCheck()
    }
}
