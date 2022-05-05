//
//  ContentView.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImageView()
                .offset(x: 0, y: -130)
                .padding(.bottom,-130)
            TextView()
            Spacer()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
