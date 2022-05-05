//
//  Landmark.swift
//  LandmarkOfficalTraining
//
//  Created by Renhao Zhang on 2022-05-03.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    
    struct Coordinates: Hashable,Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
