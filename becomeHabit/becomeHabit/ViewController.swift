//
//  ViewController.swift
//  becomeHabit
//
//  Created by Kristijan Gašljević on 21/02/2020.
//  Copyright © 2020 Kristijan Gašljević. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var currentStatusLabel: UILabel!
    @IBOutlet var maxValue: UILabel!
    var number = 0;

    @IBAction func AddButton(_ sender: Any) {
        
        number+=1
        currentStatusLabel.text = String(number)
        
    }
    
    @IBAction func resetValue(_ sender: Any) {
        
        currentStatusLabel.text = String(0)
        maxValue.text = Int(getMaxValue(number));
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func getMaxValue(number: Int) -> Int {
            
            if(number>Int(maxValue.text!)!){
            
        }
        
        currentStatusLabel.text = String(number)
        
        
        }
        
        
        // Do any additional setup after loading the view.
        //var number = UserDefaults.standard.integer(forKey: "number")
                
        //number += 1
                
        //Spremas novu vrijednost pod "key-em" number
        //UserDefaults.standard.set(number, forKey: "number")
    }

}

