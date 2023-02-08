//
//  DataManager.swift
//  My Kind of Town
//
//  Created by Jaswitha Reddy G on 2/8/23.
//

import Foundation
import CoreLocation
import MapKit

public class DataManager {
    // MARK: - Singleton Stuff
    public static let sharedInstance = DataManager()
    
    //This prevents others from using the default '()' initializer
    fileprivate init() {}
    
    
    func addFavourite(_ title: String) {
      
    }
    
    func isFavourite(_ favourtie: String) -> Bool {
     
    }
     
    func removeAllFavourite() {
     
    }
     
    func removeFavourite(_ favourite: String) {
    
    }
    
    func favourites() -> [String] {
    
    }
    
    //
    // MARK: - Coordinates
    //
    
    func locationFromName(_ name: String) -> MKCoordinateRegion {
     
    }
     
    //
    // MARK: Load Data from PList
    //
     
    func loadRegion() -> MKCoordinateRegion? {
     
    }
     
    func loadAnnotations() -> [Place]? {
     
    }
    
}
