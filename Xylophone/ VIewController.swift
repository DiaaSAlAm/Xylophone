//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
var player = AVAudioPlayer()

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let path = Bundle.main.path(forResource: "note\(sender.tag)", ofType : "wav")!
        let url = URL(fileURLWithPath : path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
            
        } catch {
            
            print (error)
            
        }
    
        
    }
        

        

//    func playSound() {
//        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
//
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            guard let player = player else { return }
//
//            player.prepareToPlay()
//            player.play()
//
//        } catch let error as NSError {
//            print(error.description)
//        }
//    }
//



}
