//
//  ViewController.swift
//  HackwhichTen
//
//  Created by Cazandra Rufo on 11/9/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    //part 3
    let initialLocation = CLLocation(latitude: 21.361888, longitude:
         -158.056022)
    let regionRadius = 10000

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //part 3
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "Kalapawai",
                       coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude:
                       -158.080098))
                
        mapView.addAnnotation(restaurantOne)
        
        
        //part 3
        func centerMapOnLocation(location:CLLocation)
               {
                   let coordinateRegion = MKCoordinateRegion(center: location.coordinate,

                   latitudinalMeters: CLLocationDistance(regionRadius),
                   longitudinalMeters: CLLocationDistance(regionRadius))
                   mapView.setRegion(coordinateRegion, animated: true)

               }
        
        // Do any additional setup after loading the view.
    }


}

