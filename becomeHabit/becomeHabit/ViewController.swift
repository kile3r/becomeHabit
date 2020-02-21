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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var number = UserDefaults.standard.integer(forKey: "number")
                
        number += 1
                
        //Spremas novu vrijednost pod "key-em" number
        UserDefaults.standard.set(number, forKey: "number")
    }
    
    @IBAction func addPointButton(_ sender: UIButton) {
        
        
    }
    @IBAction func resetCurrentValueButton(_ sender: Any) {
        
        currentStatusLabel.text = String(0)
        
    }
    
    func AddPoint(Int number) -> void {
        
    let number = 0
        
    }


}

