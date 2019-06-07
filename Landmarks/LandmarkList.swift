//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Micaela Cavallo on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
                .navigationBarTitle(Text("Landmarks"))
        }
    }
}


struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

