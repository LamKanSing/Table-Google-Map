//
//  MapViewController.swift
//  Table Google Map
//
//  Created by kan sing lam 
//  Copyright © 2018年 kan sing lam. All rights reserved.
//

import Foundation
import GoogleMaps
import UIKit

class MapViewController: UIViewController {
    var name = ""
    var latitude = 0.0 {
        didSet{
            print("latitude \(latitude)")
        }
    }
    var longitude = 0.0 {
        didSet{
            print("longitude \(longitude)")
        }
    }
    
    @IBOutlet weak var myMapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let camera = GMSCameraPosition.camera(withLatitude: latitude, longitude: longitude, zoom: 6.0)
        myMapView.camera = camera
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        marker.title = name
        marker.map = myMapView
        
    }
    
    @IBAction func clickBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

