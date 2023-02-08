//
//  PlacesFavouritesDelegate.swift
//  My Kind of Town
//
//  Created by Jaswitha Reddy G on 2/8/23.
//

import Foundation

protocol PlacesFavoritesDelegate: AnyObject {
    
    // Receive a string representing the name of a place
    func favoritePlace(name: String) -> Void
}
