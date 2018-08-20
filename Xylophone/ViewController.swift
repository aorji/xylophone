//
//  ViewController.swift
//  Xylophone
//
//  Created by Anastasiia ORJI on 8/16/18.
//  Copyright © 2018 Anastasiia ORJI. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{

    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        if UIDevice.current.userInterfaceIdiom == .phone {
//            return .allBut
//        } else {
//            return .all
//        }
//    }
    
    @IBAction func notePressed(_ sender: UIButton) {
    
        playSound(soundArray[sender.tag - 1])
        
    }

    func playSound(_ soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }

}

