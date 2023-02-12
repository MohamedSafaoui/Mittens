//
//  RoundedShapes.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI

struct Roundedshape: Shape {
    var corrners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corrners, cornerRadii: CGSize(width: 100, height: 100))
        return Path(path.cgPath)
    }
}
