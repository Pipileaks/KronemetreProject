//
//  TWViewController.swift
//  NewProject
//
//  Created by Umut Sever on 13.04.2019.
//  Copyright © 2019 Umut Sever. All rights reserved.
//

import UIKit

class TWViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var parolaText: UITextField!
    @IBOutlet weak var kontrolEmail: UITextField!
    @IBOutlet weak var parolaKontrol: UITextField!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func girisYapButton(_ sender: UIButton) {
        
        kontrolEmail.text = "bilgeis@projectgroup.com"
        parolaKontrol.text = "iOSProgramlama"
        if emailText.text == kontrolEmail.text || parolaText.text == parolaKontrol.text  {
            sender.setTitle("Hoşgeldiniz", for: .normal)
            
        }else {
            ()
        }
        
    }
    
    @IBAction func kayitOl(_ sender: UIButton) {
        
        performSegue(withIdentifier: "basaDonus", sender: self)
    }
    
    
    


}
