//
//  PageView.swift
//  Landmarks
//
//  Created by Camila Oregon Reyes on 01-03-20.
//  Copyright © 2020 Camila Oregon Reyes. All rights reserved.
//

import SwiftUI
import UIKit


struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0)}
    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) { PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.horizontal)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(landmark: $0)})
            .aspectRatio(3/2, contentMode: .fit)
    }
}
