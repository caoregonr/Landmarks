//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Camila Oregon Reyes on 28-02-20.
//  Copyright © 2020 Camila Oregon Reyes. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(
                            destination: LandmarkDetail(landmark: landmark)
                                .environmentObject(self.userData)
                        ) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        
    }
}

#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
         ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             LandmarkList()
                .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
         }
    }
}
#endif
