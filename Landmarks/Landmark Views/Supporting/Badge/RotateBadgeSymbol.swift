//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by Camila Oregon Reyes on 29-02-20.
//  Copyright © 2020 Camila Oregon Reyes. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
        .padding(-60)
        .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
