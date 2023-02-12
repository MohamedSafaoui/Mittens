//
//  MainScreenWelcome.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI

struct MainScreenWelcome: View {
    let titleOne: String
    let titleTwo: String
    @StateObject var titleData = TitleTest.data

    
    var body: some View {
            VStack(){
                HStack {
                    Spacer()
                }
                Text(titleOne)
//                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .font(.custom("Vanilla Caramel", size: 45))
                
                Text(titleTwo)
//                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .font(.custom("Vanilla Caramel", size: 45))
            }
            .frame(height: 160)
            .padding(.leading)
            
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .clipShape(Roundedshape(corrners: [.bottomRight]))
            .shadow(radius: 10)
            
        }
    }

    


struct MainScreenWelcome_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenWelcome(titleOne: "Hello", titleTwo: "Welcome back!")
    }
}
