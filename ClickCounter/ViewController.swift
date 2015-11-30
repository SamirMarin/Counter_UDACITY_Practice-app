//
//  ViewController.swift
//  ClickCounter
//
//  Created by Samir Marin on 2015-11-26.
//  Copyright © 2015 Samir Marin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var labelRandom:UILabel!
    
    //using a story board for additional funcitons
    
    @IBOutlet weak var colourView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 200, 200)
        label.font = UIFont.boldSystemFontOfSize(100)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        let labelRandom = UILabel()
        labelRandom.frame = CGRectMake(150, 400, 200, 200)
        labelRandom.font = UIFont.boldSystemFontOfSize(100)
        labelRandom.text = "GO"
        
        self.view.addSubview(labelRandom)
        self.labelRandom = labelRandom
        
        //button to increment
        let button = UIButton()
        button.frame = CGRectMake(150, 300, 100, 100)
        button.setTitle("increment", forState: .Normal)
        button.setTitleColor(UIColor.brownColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //button to decrement
        let buttonDecrement = UIButton()
        buttonDecrement.frame = CGRectMake(10, 300, 100, 100)
        buttonDecrement.setTitle("decrement", forState: .Normal)
        buttonDecrement.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttonDecrement)
        buttonDecrement.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //adding action for background Color change
        button.addTarget(self, action: "backGroundChange", forControlEvents: UIControlEvents.TouchUpInside)
        buttonDecrement.addTarget(self, action: "backGroundChange", forControlEvents: UIControlEvents.TouchUpInside)
        
        //adding action for three word genrator
        button.addTarget(self, action: "randomThreeOptionWordGenerate", forControlEvents: UIControlEvents.TouchUpInside)
        buttonDecrement.addTarget(self, action: "randomThreeOptionWordGenerate", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
    }
    func backGroundChange(){
        if(count%2 == 0){
            self.view.backgroundColor = UIColor.redColor()
        }
        else if(count%5 == 0){
            self.view.backgroundColor = UIColor.greenColor()
            
        }
        else{
            self.view.backgroundColor = UIColor.purpleColor()
        }
    }
    func randomThreeOptionWordGenerate(){
        if(count%2 == 0){
            self.labelRandom.text = "NO"
        }
        else if(count%5 == 0){
            self.labelRandom.text = "YO"
            
        }
        else{
            self.labelRandom.text = "SO"
        }

    }
    
    @IBAction func setColour(sender: UISlider) {
        let r: CGFloat = CGFloat(redSlider.value)
        let b: CGFloat = CGFloat(blueSlider.value)
        let g: CGFloat = CGFloat(greenSlider.value)
        
        colourView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    //adding action for slider with the story board..
    


}

