//
//  FWViewController.swift
//  NewProject
//
//  Created by Umut Sever on 13.04.2019.
//  Copyright © 2019 Umut Sever. All rights reserved.
//

import UIKit

class FWViewController: UIViewController {
    
    var gecenText : String?
    
    @IBOutlet weak var sonText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        sonText.text = gecenText
    }
    

 

}
