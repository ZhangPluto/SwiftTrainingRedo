//
//  TextView.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-03.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Turtle Rock")
                .font(.title)
            HStack{
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            Divider()
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here")
        }
        .padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
