//
//  SWViewController.swift
//  NewProject
//
//  Created by Umut Sever on 13.04.2019.
//  Copyright © 2019 Umut Sever. All rights reserved.
//

import UIKit

@objcMembers class SWViewController: UIViewController {
var baslangicZamani = TimeInterval()
    
    func guncellemeZamani(){
        
        
        let simdikiZaman = NSDate.timeIntervalSinceReferenceDate
        
        var gecenZaman : TimeInterval = simdikiZaman - baslangicZamani
        
        let dakika = Int(gecenZaman / 60.0)
        gecenZaman -= (TimeInterval(dakika) * 60.0)
        
        let saniye = Int(gecenZaman)
        gecenZaman -= TimeInterval(saniye)
        
        let salise = Int(gecenZaman * 100)
        
        let strdakika = String(format: "%02d", dakika)
        let strsaniye = String(format: "%02d", saniye)
        let strsalie = String(format: "%02d", salise)
        
        saat.text = "\(strdakika):\(strsaniye):\(strsalie)"
        
        if saniye > 0 {
            zamanlayici.invalidate()
            
            performSegue(withIdentifier: "birinciGecis", sender: self)
        }
    }
    
    var zamanlayici = Timer()
    
   
    @IBOutlet weak var saat: UILabel!
    
    @IBAction func basla(_ sender: UIButton) {
        
        let aSelector : Selector = #selector(SWViewController.guncellemeZamani)
        zamanlayici = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: aSelector, userInfo: nil, repeats: true)
        
        baslangicZamani = NSDate.timeIntervalSinceReferenceDate
        
       
        
    }
    
  
    
}
