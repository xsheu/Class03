//
//  MyMapViewController.swift
//  Class03
//
//  Created by L20102 on 2019/6/3.
//  Copyright © 2019 L20102. All rights reserved.
//

import UIKit

import MapKit
import CoreLocation

class MyMapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    var locationManager : CLLocationManager!
    
    let regionRadius : CLLocationDistance = 10000
    
    @IBOutlet weak var myMapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        locationManager = CLLocationManager()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
        
        if ( CLLocationManager.locationServicesEnabled() ){
            locationManager.startUpdatingLocation()
        }
        
        
        myMapView.delegate = self
        myMapView.showsUserLocation = true
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let loc : CLLocation = locations[0] as CLLocation
        
        DispatchQueue.main.async {
            self.centerLocation(location: loc)
        }
    }
    

    func centerLocation(location : CLLocation){
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        DispatchQueue.main.async {
            self.myMapView.setRegion(region, animated: true)
            
        }
        
        
    }


}
