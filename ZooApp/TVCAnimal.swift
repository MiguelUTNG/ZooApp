//
//  TVCAnimal.swift
//  ZooApp
//
//  Created by Mike on 3/27/19.
//  Copyright © 2019 Mike. All rights reserved.
//

import UIKit

class TVCAnimal: UITableViewCell {

    @IBOutlet weak var ivAnimalImage: UIImageView!
    @IBOutlet weak var laAnimalName: UILabel!
    @IBOutlet weak var laAnimalDes: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setAnimal(animal:Animal){
        self.laAnimalName.text=animal.name!
        self.laAnimalDes.text=animal.des!
        self.ivAnimalImage.image=UIImage(named: animal.image!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
