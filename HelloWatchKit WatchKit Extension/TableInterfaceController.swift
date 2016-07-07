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
  
  override func awake(withContext context: AnyObject!) {
    table.setNumberOfRows(minions.count, withRowType: "MinionRowType")
    for (index, value) in minions.enumerated() {
      if let row = table.rowController(at: index) as? MinionRowController {
        row.image.setImageNamed(value)
        row.minionNameLabel.setText(value)
      }
    }
  }
  

  override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
    return minions[rowIndex]
  }
}



