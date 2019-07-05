//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Rahul Sharma on 6/17/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct CategoryHome : View {
    
    var categories: Dictionary<String, [Landmark]> {
        .init(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            Text("Landmarks Content")
                .navigationBarTitle(Text("Featured"))
        }
    }
    
}

#if DEBUG
struct CategoryHome_Previews : PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
#endif
