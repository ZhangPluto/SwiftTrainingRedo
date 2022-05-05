//
//  LandmarkRowVIew.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-03.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRowView(landmark: landmarks[0])
            LandmarkRowView(landmark: landmarks[1])
            
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
