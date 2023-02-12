//
//  Timmer.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/26/23.
//

import SwiftUI

struct Timmer: View {
    var timmeron: Bool = true
    @State public var timeRemaining = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
            Text("Time: \(timeRemaining)")
                .font(.title2)
                .bold()
              
                
               
            
            
            
        }
        .onReceive(timer) { time in
            if timmeron {
                timeRemaining += 1
             // Timmer.timeRemaining += 1
            }
        }
    }
}
struct Timmer_Previews: PreviewProvider {
    static var previews: some View {
        Timmer()
    }
}
