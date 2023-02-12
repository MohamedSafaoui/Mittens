//
//  LoadingScreen.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI

struct LoadingScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.3
    
    var body: some View {
        
        if isActive {
            MainScreenView()
            
        }else{
            ZStack{
                Color.red
                    .ignoresSafeArea()
                    .opacity(100)
                VStack{
                    
                    VStack{
                        Image("mittensLogo")
                            .resizable()
                            .frame(height: 500)
                            .padding()
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeInOut(duration: 2.0)){
                            self.size = 1.5
                            self.opacity = 1.0
                        }
                    }
                }
                
                
                //1.7
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() +  1.7){
                    self.isActive = true
                }
            }
        }
        

    }
    
}
struct LoadingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreen()
    }
}
