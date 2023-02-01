//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(fileName: sender.currentTitle!)
        sender.alpha = 0.5
        let seconds = 0.2
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds)
        {
        sender.alpha = 1
        }
    }
    
    func playSound(fileName: String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav" )
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
}
