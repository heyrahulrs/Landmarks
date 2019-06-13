//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                        .lineLimit(nil)
                    
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
            
        }
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkDetail(landmark: landmarkData[0])
            LandmarkDetail(landmark: landmarkData[1])
            LandmarkDetail(landmark: landmarkData[2])
        }
    }
}
#endif
