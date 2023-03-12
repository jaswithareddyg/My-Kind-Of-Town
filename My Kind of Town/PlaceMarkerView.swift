//
//  PlaceMarkerView.swift
//  My Kind of Town
//
//  Created by Jaswitha Reddy G on 2/8/23.
//

import Foundation
import MapKit

class PlaceMarkerView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            clusteringIdentifier = "Place"
            displayPriority = .defaultHigh
            markerTintColor = UIColor.red
            glyphImage = UIImage(systemName: "pin.fill")
        }
    }
}
