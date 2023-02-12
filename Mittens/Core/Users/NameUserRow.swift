//
//  NameUserRow.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/31/23.
//

import SwiftUI

struct NameUserRow: View {
//    @StateObject var titleData = emailuser.data2
    var name: String
    
    var body: some View {
        Text(name)

            .fontWeight(.semibold)
            .font(.custom("Vanilla Caramel", size: 35))
    }
}

struct NameUserRow_Previews: PreviewProvider {
    static var previews: some View {
        NameUserRow(name: "mike")
    }
}
