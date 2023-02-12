//
//  ImputField.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI

struct ImputField: View {
    let imagename: String
    let placeholdertext: String
  
    @Binding var text: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imagename)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 35)
                    .foregroundColor(Color(.gray))
                    
                    .padding()
                    
                
                    TextField(placeholdertext, text: $text)
                   
                    .padding()
                    .background((Color.blue.opacity(0.10)
                        .cornerRadius(15)))
                    .foregroundColor(.black)
                    .bold()
                    .foregroundColor(.black)
                    .font(.title2)
                }
            
            }
           
                
            
                
        }
    }


struct ImputField_Previews: PreviewProvider {
    static var previews: some View {
        ImputField(imagename: "envelope",
                   placeholdertext: "email",
                   text: .constant(""))
    }
}
