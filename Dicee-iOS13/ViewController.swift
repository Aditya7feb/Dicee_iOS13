//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    //IBOutlet Allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
        
    //"who.what=value" is the general syntax convention in swift
        
    //we use "image literal" as a value to change to a particular image

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
    //if we put the variable declaration leftDiceNumber here then
    //each time the code will execute the variable will get assigned
    //to the value 1.
        
        let diceView = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
    // constant variable keyword -> let
        
        diceImageView1.image = diceView[Int.random(in: 0...5)]
    //or we can also use diceView[Int.random(in: 0...5)]
        
        diceImageView2.image = diceView.randomElement()
//or we can also use diceView[Int.random(in: 0...5)] instead of diceView.randomElement()
        
//        random number generation in swift:-
//        Int.random(in: 1...10) inclusive of 1 and 10
//        Int.random(in: 1..<5) exclusive of 5
//        Bool.random()
//        Array.shuffle()
//        Array.randomElement()
    }

}
