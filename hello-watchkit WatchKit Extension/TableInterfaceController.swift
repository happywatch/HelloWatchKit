//
//  TableInterfaceController.swift
//  hello-watchkit
//
//  Created by temporary on 12/16/14.
//  Copyright (c) 2014 temporary. All rights reserved.
//

import Foundation
import WatchKit

class TableInterfaceController: WKInterfaceController {
  
  let minions = ["Bob", "Dave", "Jerry", "Jorge", "Kevin", "Mark", "Phil", "Stuart", "Tim"]
  
  @IBOutlet weak var table: WKInterfaceTable!
  
  override func awakeWithContext(context: AnyObject!) {
    table.setNumberOfRows(minions.count, withRowType: "MinionRowType")
    for (index, value) in enumerate(minions) {
      if let row = table.rowControllerAtIndex(index) as? MinionRowController {
        row.image.setImageNamed(value)
        row.minionNameLabel.setText(value)
      }
    }
  }
  

  override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
    return minions[rowIndex]
  }
}



