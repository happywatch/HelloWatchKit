//
//  MapInterfaceController.swift
//  hello-watchkit
//
//  Created by temporary on 12/16/14.
//  Copyright (c) 2014 temporary. All rights reserved.
//

import Foundation
import WatchKit

class MapInterfaceController: WKInterfaceController {
  @IBOutlet weak var mapView: WKInterfaceMap!
  
  override func awake(withContext context: AnyObject!) {
    let location = CLLocationCoordinate2D(latitude: 37, longitude: -122)
    let coordinateSpan = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    mapView.addAnnotation(location, with: .purple)
    mapView.setRegion(MKCoordinateRegion(center: location, span: coordinateSpan))
  }
  
}

