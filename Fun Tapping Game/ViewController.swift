//
//  ViewController.swift
//  Fun Tapping Game
//
//  Created by Sharon Devasia on 12/05/16.
//  Copyright © 2016 Sharon Devasia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //properties
    var maxTaps:Int = 0
    var currentTaps:Int = 0
    
    
    
    
    
    // the first view elements that will be visible when the screen loads for the first time
    

    @IBOutlet weak var logoImg:UIImageView!
    @IBOutlet weak var howManyTapsTxt:UITextField!
    @IBOutlet weak var playBtn:UIButton!
    
    // the list of elements that will appear once the play button is pressed
    
    @IBOutlet weak var tapBtn:UIButton!
    @IBOutlet weak var tapsLbl:UILabel!
    
    // a function to handle the target button pressed 
    
    @IBAction func onCoinTapped(sender: UIButton) {
        currentTaps = currentTaps + 1
        //tapsLbl.text = "\(currentTaps) Taps"
        updateTapsLbl()
        
        if isGameOver(){
            restartGame()
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    //defining a function to start the game and hide the unwanted elements on screen
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        
        //validation if the user enters nothing (empty string) in the how mant taps text field
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            //tapsLbl.text = "\(currentTaps) Taps"

            updateTapsLbl()
            
        }
        
    }
    
    //function to restart a game 
    
    func restartGame(){
        
        maxTaps = 0
        howManyTapsTxt.text = ""
        currentTaps = 0
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
        
    }
    
    
    
    
    
    
    //creating a function to check if the game is over 
    
    func isGameOver() -> Bool {
        
        
        if currentTaps >= maxTaps {
            
            return true
        } else {
            
            return false
        }
    }
    
    //we created this function because "tapsLbl.text = "\(currentTaps) Taps" are getting repeated and hence following Dont Repeat Yourself (DRY) principle. The above code has been include and commented out to make you understand how same code swells up the program //
    
    func updateTapsLbl(){
        
        tapsLbl.text = "\(currentTaps) Taps"
    }

}

