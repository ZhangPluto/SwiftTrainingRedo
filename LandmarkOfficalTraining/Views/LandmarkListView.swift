//
//  LandmarkList.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-04.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetailView(landmark: landmark)
                } label: {
                LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
        
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
            
    }
}
