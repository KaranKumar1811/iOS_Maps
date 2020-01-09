//
//  ViewController.swift
//  iOS_Maps
//
//  Created by MacStudent on 2020-01-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // define latitude and longitude
        let latitude : CLLocationDegrees = 43.64
        let longitude : CLLocationDegrees = -79.38
        
        
        // define delta long and delta lat
        let latDelta : CLLocationDegrees = 0.05
        let longDelta : CLLocationDegrees = 0.05
        
        // define spam
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        // define Location
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    
        // define region
        let region = MKCoordinateRegion(center: location, span: span)
        
        // set the region on the map
        mapView.setRegion(region, animated: true)

        //adding annotation for the map
        // Used for pinning Location
        let annotation = MKPointAnnotation()
        annotation.title = "Toronto City"
        annotation.subtitle = "Love"
        annotation.coordinate = location
        mapView.addAnnotation(annotation)
    
        
    }


}

