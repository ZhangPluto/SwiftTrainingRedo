//
//  LandmarkList.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-04.
//

import SwiftUI

struct LandmarkListView: View {
    @State private var showFavoriteOnly = false
    @EnvironmentObject var modelData: ModelData

    var filteredLandmark: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)

        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favourite only")
                }
                ForEach(filteredLandmark){ landmark in
                    NavigationLink{
                        LandmarkDetailView(landmark: landmark)
                    } label: {
                        LandmarkRowView(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
        
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
            .environmentObject(ModelData())
            
    }
}
