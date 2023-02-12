//
//  WelcomeScreenEdit.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/30/23.
//

import SwiftUI

struct WelcomeScreenEdit: View {
    @EnvironmentObject var titleData: TitleTest
    @State var textfeild: String = ""
    @State var textfeild2: String = ""
    @State var dataArray: [String] = [""]
    @State public var title1: String = ""
    @State public var title2: String = ""
    var body: some View {
        
        VStack {
           
                Text("Edit the Welcome Screen")
                    .font(.custom("Vanilla Caramel", size: 50))
                    .bold()
                    .padding(.vertical,40)
                
                
                 MainScreenWelcome(titleOne: self.titleData.title, titleTwo: title2)

                
              
                
           //   Text("\(textfeild)")
            TextField("type somthing here for the top row", text: $textfeild)
                       .padding(.all,30)
                       .background((Color.gray.opacity(0.3).cornerRadius(20)))
                       .foregroundColor(.black)
                       .font(.headline)
                   
            
            Button {
               savetitle1()
            } label: {
                
                Text("save")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background((Color.blue.cornerRadius(20)))
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding()
            
            
            
            ForEach(dataArray, id: \.self) { index in
                Text(index)
            }
            
            Spacer()
            
        }
        .padding(.horizontal,35)
        
        
        
        
    }
    
    func saveText() {
        dataArray.append(textfeild)
        
    }
    
    func savetitle1() {
        self.titleData.title = textfeild
       title1 = textfeild
    }
        
}

struct WelcomeScreenEdit_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenEdit().environmentObject(TitleTest())
    }
}
