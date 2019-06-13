//
//  Badge.swift
//  Landmarks
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct Badge : View {
    
    let rotationCount = 8

    var badgeSymbols: some View {
        ForEach(0..<rotationCount) { i in
            RotatedBadgeSymbol(
                angle: .degrees(Double(i) / Double(self.rotationCount)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }

}

#if DEBUG
struct Badge_Previews : PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
