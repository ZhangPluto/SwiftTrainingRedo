//
//  TextView.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-03.
//

import SwiftUI

struct TextView: View {
    var landmark : Landmark
    @EnvironmentObject var modelData: ModelData
    
    var landmarkIndex: Int{
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    var body: some View {
        VStack(alignment: .leading){
//            Text("landmark.name")
            HStack {
                Text(landmark.name)
                    .font(.title)
                FavouriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
            }
            HStack{
//                Text("landmark.park")
                Text(landmark.park)
                Spacer()
                Text(landmark.state)
//                Text("landmark.state")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            Divider()
            Text("About\(landmark.name)")
//            Text("About")
                .font(.title2)
            Text(landmark.description)
//            Text("landmark.description")
        }
        .padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var modelData = ModelData()
    static var previews: some View {
        TextView(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
