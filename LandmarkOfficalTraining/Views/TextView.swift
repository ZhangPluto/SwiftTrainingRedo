//
//  TextView.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-03.
//

import SwiftUI

struct TextView: View {
    var landmark : Landmark
    var body: some View {
        VStack(alignment: .leading){
            Text(landmark.name)
                .font(.title)
            HStack{
                Text(landmark.park)
                Spacer()
                Text(landmark.state)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            Divider()
            Text("About\(landmark.name)")
                .font(.title2)
            Text(landmark.description)
        }
        .padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(landmark: landmarks[0])
    }
}
