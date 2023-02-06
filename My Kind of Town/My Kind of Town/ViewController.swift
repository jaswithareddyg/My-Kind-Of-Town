//
//  ViewController.swift
//  My Kind of Town
//
//  Created by Jaswitha Reddy G on 2/6/23.
//

import UIKit
import MapKit

class ViewController: UIViewController{
    
    @IBOutlet var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapImageView(_ sender: UITapGestureRecognizer) {
        print("tapped", sender)
    }
}
