//
//  ViewController.swift
//  My Kind of Town
//
//  Created by Jaswitha Reddy G on 2/8/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, PlacesFavoritesDelegate {
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var HUD: UIView!
    @IBOutlet var locationTitle: UILabel!
    @IBOutlet var locationDesc: UILabel!
    @IBOutlet var starButton: UIButton!
    @IBOutlet var favoritesButton: UIButton!
    
    var starButtonOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(HUD)
        view.addSubview(favoritesButton)
        
        mapView.showsCompass = false
        mapView.pointOfInterestFilter = .excludingAll
        mapView.setRegion(DataManager.sharedInstance.loadRegion(), animated: true)
        mapView.register(PlaceMarkerView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        mapView.addAnnotations(DataManager.sharedInstance.loadAnnotations())
        mapView.delegate = self
        
        locationTitle.text = DataManager.sharedInstance.myAnnotations.first?.title
        locationDesc.text = DataManager.sharedInstance.myAnnotations.first?.longDescription
        
        HUD.layer.cornerRadius = 10.0
    }
    
    @IBAction func pressStarButton(_ sender: Any) {
        if starButtonOn {
            starButtonOn = false
            starButton.setImage(UIImage(systemName: "star"), for: .normal)
            DataManager.sharedInstance.removeFavorite(name: locationTitle.text!)
        } else {
            starButtonOn = true
            starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
            starButton.tintColor = .systemYellow
            DataManager.sharedInstance.addFavorite(name: locationTitle.text!)
        }
    }
    
    @IBAction func pressFavortieButton(_ sender: Any) {
        let favoritesViewController = self.storyboard?.instantiateViewController(identifier: "FavoritesViewController") as! FavoritesViewController
        if let sheet = favoritesViewController.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.largestUndimmedDetentIdentifier = .large
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
            sheet.prefersEdgeAttachedInCompactHeight = true
            sheet.widthFollowsPreferredContentSizeWhenEdgeAttached = true
        }
        present(favoritesViewController, animated: true, completion: nil)
        favoritesViewController.delegate = self
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let selectedAnnotation = view.annotation as? Place
        locationTitle.text = selectedAnnotation?.name
        locationDesc.text = selectedAnnotation?.longDescription
        if let title = locationTitle.text {
            if DataManager.sharedInstance.isFavorite(name: title) {
                starButtonOn = true
                starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
            } else {
                starButtonOn = false
                starButton.setImage(UIImage(systemName: "star"), for: .normal)
            }
        }
    }
    
    func favoritePlace(name: String) {
        locationTitle.text = name
        locationDesc.text = DataManager.sharedInstance.getDescription(name: name)
        mapView.setRegion(DataManager.sharedInstance.getRegion(name: name)!, animated: true)
        starButtonOn = true
        starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
    }
}
