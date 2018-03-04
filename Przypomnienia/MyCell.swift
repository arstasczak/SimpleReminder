//
//  MyCell.swift
//  Przypomnienia
//
//  Created by Student on 15.11.2017.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var tytul: UILabel!
    @IBOutlet weak var opis: UILabel!
    @IBOutlet weak var data: UILabel!
    @IBOutlet weak var obrazek: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setup(wpis: Wpis){
        self.tytul.text = wpis.tytul
        self.data.text = "\(wpis.data)"
        self.opis.text = wpis.opis
        if(wpis.isActive){
            self.obrazek.image = UIImage(named: "ready")
        }
        else{
            self.obrazek.image = UIImage(named: "pending")
        }
        
    }

}
