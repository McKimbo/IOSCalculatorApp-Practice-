//
//  ViewController.swift
//  testapp
//
//  Created by Christian Kim on 10/30/18.
//  Copyright © 2018 Ligma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusBar: UILabel!
    
    var x: Int = 0
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var answer: Int = 0
    var calc: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func oneButton(_ sender: Any) {
        x = (x*10)+1
        statusBar.text = String(x)
    }
    
    @IBAction func twoButton(_ sender: Any) {
        x = (x*10)+2
        statusBar.text = String(x)
    }
    
    @IBAction func threeButton(_ sender: Any) {
        x = (x*10)+3
        statusBar.text = String(x)
    }
    
    @IBAction func fourButton(_ sender: Any) {
        x = (x*10)+4
        statusBar.text = String(x)
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        x = (x*10)+5
        statusBar.text = String(x)
    }
    
    @IBAction func sixButton(_ sender: Any) {
        x = (x*10)+6
        statusBar.text = String(x)
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        x = (x*10)+7
        statusBar.text = String(x)
    }
    
    @IBAction func eightButton(_ sender: Any) {
        x = (x*10)+8
        statusBar.text = String(x)
    }
    
    @IBAction func nineButton(_ sender: Any) {
        x = (x*10)+9
        statusBar.text = String(x)
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        x = (x*10)
        statusBar.text = String(x)
    }
    
    
    
    @IBAction func add(_ sender: Any) {
        firstNumber = x
        x=0
        calc = 1
    }
    
    @IBAction func subtract(_ sender: Any) {
        firstNumber = x
        x = 0
        calc = 2
    }
    
    @IBAction func multiply(_ sender: Any) {
        firstNumber = x
        x = 0
        calc = 3
    }
    
    @IBAction func divide(_ sender: Any) {
        firstNumber = x
        x = 0
        calc = 4
    }
    
    @IBAction func clearButton(_ sender: Any) {
        x=0
        firstNumber = 0
        secondNumber = 0
        answer = 0
        calc = 0
        statusBar.text = "0"
    }
    
    @IBAction func solve(_ sender: Any) {
        secondNumber = x

        if(calc == 1 ){
            answer = (firstNumber + secondNumber)
        }
        if(calc == 2){
            answer = (firstNumber - secondNumber)
        }
        if(calc == 3){
            answer = (firstNumber * secondNumber)
        }
        if(calc == 4){
            answer = (firstNumber / secondNumber)
        }
        print(answer)
        statusBar.text = String(answer)
        x = answer
        calc=0
    }
    
}

