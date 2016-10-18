//
//  FruitCell.swift
//  EvvCustomTable101
//
//  Created by artist on 10/18/16.
//  Copyright © 2016 EddieKwon. All rights reserved.
//

import UIKit

class FruitCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var fruitLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func insertCellBody(body:String , newDate:NSDate ){
        
        self.fruitLabel?.text = body
     
        let dateformatter = NSDateFormatter()
        dateformatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateformatter.timeStyle = NSDateFormatterStyle.ShortStyle
        let newNow = dateformatter.stringFromDate( newDate )
        
        self.dateLabel?.text = newNow
    }
    

}
