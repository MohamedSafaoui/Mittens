//
//  UserRow.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI

struct UserRow: View {
    @State var showSheet1: Bool = false
    let usermail: String
    
    var body: some View {
      
            VStack {
                HStack(alignment: .center){
                    Spacer()
                    
                 Text(usermail)
                       .font(.title2)
                        .bold()
                        .frame(width: 250)
                      
                    
                    Spacer()
                   
             UserTimer()
                        
//                 Text("00:00")
//                        .font(.title2)
//                         .bold()
                    
                    Spacer()
                    
                    Button {
                        showSheet1.toggle()
                    } label: {
                        Text("Clock Out")
                            .bold()
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical, 15)
                            .padding(.horizontal,15)
                            .background(Color.blue
                                .opacity(2)
                                .cornerRadius(10))
                                
                    }
                    .sheet(isPresented: $showSheet1) {
                        ClockOutCheck()
                    }

                        
                        
                    
                    
                    
                    
                    
                    
                    Spacer()
                    
                }
                Divider()
                    .foregroundColor(Color(.darkGray))
                    .frame(width: 800)
            }
        }
            
        }
    








struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(usermail: "mike")
    }
}
