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
    }


}

