//
//  LandmarkDetailView.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-04.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
//        VStack{
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImageView(image: landmark.image)
                .offset(x: 0, y: -130)
                .padding(.bottom,-130)
            TextView(landmark: landmark)
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkDetailView(landmark: ModelData().landmarks[0])
            
    }
}
