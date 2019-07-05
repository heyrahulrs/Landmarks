//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List {
                
                Section {
                    Toggle(isOn: $userData.showFavoritesOnly) {
                        Text("Show Favorites")
                    }
                }
                
                Section {
                    ForEach(userData.landmarks) { landmark in
                        if !self.userData.showFavoritesOnly || landmark.isFavorite {
                            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                                LandmarkRow(landmark: landmark)
                            }
                        }
                    }
                }
            }
            .listStyle(.grouped)
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}

#endif
