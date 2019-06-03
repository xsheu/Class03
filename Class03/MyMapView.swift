//
//  MyMapViewController.swift
//  Class03
//
//  Created by 許光毅 on 2019/6/3.
//  Copyright © 2019 許光毅. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MKMapView: UIViewController,CLLocationManagerDelegate{
    
    var locationManager : CLLocationManager!
    
    let regionRadius : CLLocationDistance = 10000
    @IBOutlet weak var myMapView : MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()

        if( CLLocationManager.locationServicesEnabled()) {
            locationManager.startUpdatingLocation()
        }
        
        
    }
    
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
