//
//  ViewController.swift
//  becomeHabit
//
//  Created by Kristijan Gašljević on 21/02/2020.
//  Copyright © 2020 Kristijan Gašljević. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currenntPoint = 0;
    var maxPoint=0;

    @IBOutlet var maxPointsLabel: UILabel!
    @IBOutlet var currStatusLabel: UILabel!
    
    var number = UserDefaults.standard.integer(forKey: "number")
    //Spremas novu vrijednost pod "key-em" number
    //UserDefaults.standard.set(number, forKey: "number")
    
    @IBAction func AddButton(_ sender: Any) {
        
        currenntPoint+=1
        
        currStatusLabel.text = String(currenntPoint)
        
        maxPoint = getMaxValue(currentNumber:Int(currenntPoint), maxPoint: maxPoint)
        
        maxPointsLabel.text = String(maxPoint)
        
        if(currenntPoint==22){
            showAlert()
        }
        
    }
    
    @IBAction func resetValue(_ sender: Any) {
        
        currenntPoint = 0
        currStatusLabel.text = "0"
        
        maxPointsLabel.text = String(maxPoint)
        
    }
    
    func getMaxValue(currentNumber:Int, maxPoint:Int)-> Int{
        
        if(currentNumber>maxPoint){
            return currentNumber
        }
        return maxPoint
        
    }
    
    func showAlert()->Void {
        
        // create the alert
        let alert = UIAlertController(title: "Sucess", message: "Goal accieved, kepp up the good work", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

