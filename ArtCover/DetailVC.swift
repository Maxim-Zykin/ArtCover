//
//  DetailVC.swift
//  ArtCover
//
//  Created by Максим Зыкин on 01.11.2022.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var TitelLabel: UILabel!
    
    var trackTitle = ""

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: trackTitle)
        TitelLabel.text = trackTitle
        TitelLabel.numberOfLines = 0
    }
}
