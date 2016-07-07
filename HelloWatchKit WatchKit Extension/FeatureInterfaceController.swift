//
//  FeatureInterfaceController.swift
//  hello-watchkit
//
//  Created by temporary on 12/16/14.
//  Copyright (c) 2014 temporary. All rights reserved.
//

import Foundation
import WatchKit

class FeatureInterfaceController: WKInterfaceController {
  
  @IBOutlet weak var featureLabel: WKInterfaceLabel!
  @IBOutlet weak var featureImage: WKInterfaceImage!
  
  override func awake(withContext context: AnyObject!) {
    if let context = context as? String {
      featureLabel.setText(context)
      featureImage.setImageNamed(context)
    }
  }
}
