//
//  ViewController.swift
//  jayesh_c0880752_finaltest
//
//  Created by Jayesh Khistria on 2022-11-07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLbl: UILabel!
    
    @IBOutlet weak var evenLbl: UILabel!
    
    @IBOutlet weak var oddLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapEven = UITapGestureRecognizer(target: self, action: #selector(checkeven))
        let tapOdd = UITapGestureRecognizer(target: self, action: #selector(checkodd))
        
        oddLbl.addGestureRecognizer(tapOdd)
        evenLbl.addGestureRecognizer(tapEven)
        
        loadRandomNumber()
        
        let alert1 = UIAlertController(title: "Result", message: "Wanted To Play Again?", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Play Again !", style: .cancel)
       /* let action2 = UIAlertAction(title:"Show Progress ", style: .cancel) */
        alert1.addAction(action1)
        //alert1.addAction(action2)
    }
    
    func loadRandomNumber() {
        let number = Int(arc4random_uniform(100))
        self.numberLbl.text = "\(number)"
        
    }
    
    @objc func checkodd() {
        let number = Int(self.numberLbl.text!) ?? 0
        if isodd(number: number) {
        }
        else {
        }
    }
    
    @objc func checkeven() {
        let number = Int(self.numberLbl.text!) ?? 0
        if !isodd(number: number) {
        }
        else {
        }
    }
    
    func isodd(number: Int) -> Bool {
        
        for i in 0...100 {
            if(i / 2 == 0){
            }
            
        }
        return true
    }
    
}








