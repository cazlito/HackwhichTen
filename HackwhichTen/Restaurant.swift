//
//  Restaurant.swift
//  HackwichTen
//
//  Created by Cazandra Rufo on 11/9/23.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
    
    //part 4 #5
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
             {
                 self.restaurantTitle = title
                 self.restaurantType = type
                 self.coordinate = coordinate
                 
                 super.init()
                 
             }

    //part 5
    
    var subtitle: String?
        {
            //Problem Set #3 Code Switch
            return restaurantType
        }
    
}
