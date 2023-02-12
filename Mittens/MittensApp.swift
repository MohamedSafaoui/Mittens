//
//  MittensApp.swift
//  Mittens
//
//  Created by MohamedSafaoui on 2/11/23.
//

import SwiftUI

@main
struct MittensApp: App {
    var body: some Scene {
        WindowGroup {
            LoadingScreen().environmentObject(TitleTest())
        }
    }
}
