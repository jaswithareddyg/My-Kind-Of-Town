//
//  ViewController.swift
//  My Kind of Town
//
//  Created by Jaswitha Reddy G on 2/6/23.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate{
    
    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var starButton: UIButton!
    
    @IBAction func starButton(sender: UIButton)
    {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func didTapImageView(_ sender: UITapGestureRecognizer) {
        print("tapped", sender)
    }
    
    override func viewDidLayoutSubviews() {
        <#code#>
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.delegate = self
        self.mapView.showsCompass = false
        self.mapView.pointOfInterestFilter = .excludingAll
        self.mapView.region = DataManager.sharedInstance.loadRegion()!
        self.mapView.addAnnotations(DataManager.sharedInstance.loadAnnotations()!)
        self.mapView.register(PlaceMarkerView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        nameLabel.text = DataManager.sharedInstance.loadAnnotations()?.first?.title
        descriptionLabel.text = DataManager.sharedInstance.loadAnnotations()?.first?.longDescription
        starButton.isSelected = DataManager.sharedInstance.isFavourite(annotation?.title!)
    }
    
    
}

extension ViewController: PlacesFavoritesDelegate {
    func favoritePlace(name: String) {
        
    }
}
