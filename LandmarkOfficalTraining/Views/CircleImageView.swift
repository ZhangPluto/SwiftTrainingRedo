//
//  CircleImageView.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-03.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .shadow(radius: 7)
            .overlay(Circle().stroke(.white,lineWidth: 4))
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
