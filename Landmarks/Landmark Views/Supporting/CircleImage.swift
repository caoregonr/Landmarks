//
//  CircleImage.swift
//  Landmarks
//
//  Created by Camila Oregon Reyes on 28-02-20.
//  Copyright © 2020 Camila Oregon Reyes. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image.clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
