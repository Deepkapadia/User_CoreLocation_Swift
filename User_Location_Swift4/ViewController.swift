//
//  ViewController.swift
//  User_Location_Swift4
//
//  Created by DeEp KapaDia on 22/05/18.
//  Copyright © 2018 DeEp KapaDia. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var MapView: MKMapView!
    
    let LocationMGR = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        LocationMGR.delegate = self
        LocationMGR.requestWhenInUseAuthorization()
        LocationMGR.startUpdatingLocation()
        
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        let center = location.coordinate
        let span = MKCoordinateSpan(latitudeDelta:  0.05 , longitudeDelta: 0.05)
       
        let Region = MKCoordinateRegion(center: center, span: span)
        
        MapView.setRegion(Region, animated: true)
        MapView.showsUserLocation = true
        
    }


}

