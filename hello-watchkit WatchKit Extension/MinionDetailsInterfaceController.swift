//
//  MinionDetailsInterfaceController.swift
//  hello-watchkit
//
//  Created by temporary on 12/16/14.
//  Copyright (c) 2014 temporary. All rights reserved.
//

import WatchKit
import Foundation


class MinionDetailsInterfaceController: WKInterfaceController {

  @IBOutlet weak var nameLabel: WKInterfaceLabel!
  @IBOutlet weak var image: WKInterfaceImage!
  
  override func awakeWithContext(context: AnyObject!) {
    if let context = context as? String {
      nameLabel.setText(context)
      image.setImageNamed(context)
    }
  }
}
