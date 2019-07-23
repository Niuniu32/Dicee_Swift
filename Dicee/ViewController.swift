//
//  ViewController.swift
//  Dicee
//
//  Created by Hu Chao Xiang on 2019-07-19.
//  Copyright © 2019 Hu Chao Xiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Store all of the name of dice in a array
    let diceArray=["dice1","dice2","dice3","dice4","dice5",
                   "dice6"];
    
    //declear random variables
    var randomDiceIndex1:Int=0;
    var randomDiceIndex2:Int=0;
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Change the dice images as soon as the dice app lunch
        updateDiceImages();
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        updateDiceImages();
    }
    
    func updateDiceImages(){
        //Making two different random numbers for dice
        randomDiceIndex1=Int.random(in:0 ... 5);
        randomDiceIndex2=Int.random(in:0 ... 5);
        
        //Print for debug
        print(randomDiceIndex1);
        
        //Change Dice image for the diceImageView1
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]);
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2]);
    }
    
}

