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
    
    @IBOutlet var starButton: UIButton!
    
    @IBAction func starButton(sender: UIButton)
    {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func didTapImageView(_ sender: UITapGestureRecognizer) {
        print("tapped", sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
