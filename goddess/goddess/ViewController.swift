//
//  ViewController.swift
//  goddess
//
//  Created by Ana Clara Lopes on 17/08/20.
//  Copyright © 2020 Ana Clara Lopes. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var oracleCard: UIImageView!
    @IBOutlet var card: UIImageView!
    
    
    @IBOutlet var cardButton: UIButton!
    @IBOutlet var deusaButton: UIButton!
    
    @IBOutlet var viewOracle: UIView!
    @IBOutlet var viewDeusa: UIView!
    
    
    
    var cards: [UIImage] = [
        UIImage(named: "nut.png")!,
        UIImage(named: "babayaga.png")!,
        UIImage(named: "bast.png")!,
        UIImage(named: "hecate.png")!,
        UIImage(named: "iemanja.png")!,
        UIImage(named: "inanna.png")!,
        UIImage(named: "isis.png")!,
        UIImage(named: "kali.png")!,
        UIImage(named: "shakti.png")!,
        UIImage(named: "uzume.png")!,
        
    ]
    
    
    
    @IBAction func flipCard (sender: UIButton) {
        
        UIView.transition(from: self.viewOracle, to: self.viewDeusa, duration: 1, options: UIView.AnimationOptions.transitionFlipFromRight, completion: nil)
        
        card.image = cards [Int.random(in: 0...9)]
        
    } //fecha funcao flipCard
    
    
    @IBAction func flipBack (sender: UIButton) {
        
        UIView.transition(from: self.viewDeusa, to: self.viewOracle, duration: 1, options: UIView.AnimationOptions.transitionFlipFromLeft, completion: nil)
        
    } // fecha funcao flipback
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    } // fecha viewDidLoad
    
    
} // fecha view controller
