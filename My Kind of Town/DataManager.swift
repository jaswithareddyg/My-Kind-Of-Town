//
//  DataManager.swift
//  My Kind of Town
//
//  Created by Jaswitha Reddy G on 2/8/23.
//

import Foundation
import MapKit

public class DataManager {
    
    // MARK: - Singleton Stuff
    public static let sharedInstance = DataManager()

    var plist = NSDictionary()
    var myFavorites = [String]()
    var myAnnotations = [Place]()
    
    //This prevents others from using the default '()' initializer
    fileprivate init() {
        loadAnnotationFromPlist()
    }
    
    func loadAnnotationFromPlist() {
        plist = NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Data", ofType: "plist")!)!
    }

    func isFavorite(name: String) -> Bool {
        return myFavorites.contains(name)
    }
    
    func addFavorite(name: String) {
        myFavorites.append(name)
    }
    
    func removeFavorite(name: String) {
        var deleteIndex = 0
        for i in 0 ..< myFavorites.count {
            if myFavorites[i] == name {
                deleteIndex = i
            }
        }
        myFavorites.remove(at: deleteIndex)
    }
    
    func removeFavoriteIndex(index: Int) {
        myFavorites.remove(at: index)
    }
    
    //
    // MARK: - Coordinates
    //
    
    func getRegion(name: String) -> MKCoordinateRegion? {
        for annotation in myAnnotations {
            if annotation.title == name {
                let miles: Double = 3 * 600
                let centerPoint = CLLocationCoordinate2DMake(annotation.coordinate.latitude, annotation.coordinate.longitude)
                let viewRegion = MKCoordinateRegion(center: centerPoint, latitudinalMeters: miles, longitudinalMeters: miles)
                return viewRegion
            }
        }
        return nil
    }
    
    func getDescription(name: String) -> String? {
        for annotation in myAnnotations {
            if annotation.title == name {
                return annotation.longDescription
            }
        }
        return nil
    }
    
    //
    // MARK: Load Data from PList
    //
    
    func loadRegion() -> MKCoordinateRegion {
        let region = plist["region"]! as? [Double]
        let miles: Double = 3 * 600
        let centerPoint = CLLocationCoordinate2DMake(region![0], region![1])
        let viewRegion = MKCoordinateRegion(center: centerPoint, latitudinalMeters: miles, longitudinalMeters: miles)
        return viewRegion
    }
    
    func loadAnnotations() -> [Place] {
        let places = plist["places"]! as? [NSDictionary]
        for place in places! {
            let annotation = Place()
            annotation.name = place["name"]! as? String
            annotation.title = place["name"]! as? String
            annotation.longDescription = place["description"]! as? String
            if let lat = place["lat"]! as? Double, let long = place["long"]! as? Double{
                annotation.coordinate = CLLocationCoordinate2DMake(lat, long)
                myAnnotations.append(annotation)
            }
        }
        return myAnnotations
    }
}

