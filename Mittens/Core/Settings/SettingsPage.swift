//
//  SettingsPage.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/30/23.
//

import SwiftUI

struct SettingsPage: View {

    @Environment(\.dismiss) private var dismissScreen
    
    var body: some View {
        NavigationView{
            //list of settings that navigate to different settings /data screens
            List{
                Section{
                    NavigationLink("Appearance") {
                      WelcomeScreenEdit()
                    }
                    
                    Text("App settings")
                }
            header: {
                Text("App settings")
            }
                Section{
                    Text("volunteers List")
                    Text("User Comments")
                    Text("Export")
                    Text("Import")
                    Text("Edit")
                   
                    
             
                
            
                }
            header: {
               Text("Data settings")
                }
            }
          
            
           .navigationTitle("Settings/Data")

            
        }
        
        .navigationViewStyle(.stack)
        
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
