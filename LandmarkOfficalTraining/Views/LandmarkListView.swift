//
//  LandmarkList.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-04.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        List(landmarks,id: \.id){ landmark in
            LandmarkRowView(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
