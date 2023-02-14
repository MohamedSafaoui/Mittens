

import SwiftUI


struct UserTimer: View {
    
    var timeron: Bool = true
    @State var minutes = 00
    @State var seconds = 00
    @State var hours = 00
   
    var isTimeRunning = false
   @State var isHourShowing = false
    @State var isSecondsShowing = true
    
    let timer = Timer.publish(every: 1, on: .main, in: .common)
        .autoconnect()
    
    func test() {
        
    }
    
    var body: some View {
        
        VStack {
            HStack {
               
                Text(String(format: "%02d:", hours))
                    .opacity(isHourShowing ? 1 : 0)
                    .font(.title2)
                    .bold()
                Text(String(format: "%02d", minutes))
                    .font(.title2)
                    .bold()
                
                Text(String(format: ":%02d", seconds))
                    .opacity(isSecondsShowing ? 1 : 0)
                    .font(.title2)
                    .bold()
                    
                
            }
            
            .onReceive(timer) { _ in
               
                seconds += 1
                
                if seconds == 60 {
                    minutes += 1
                    seconds = 0
                    
                    if minutes == 60 {
                        hours += 1
                        minutes = 0
                    }
                    
                    if hours > 0 {
                        isHourShowing = true
                    }
                    if hours > 0 {
                        isSecondsShowing = false
                    }
                }
                
                
                
                
            }

        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
          UserTimer()
        }
    }
}
