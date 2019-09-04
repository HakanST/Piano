//
//  ViewController.swift
//  Piano
//
//  Created by Hakan Turgut on 8/4/18.
//  Copyright © 2018 Hakan Turgut. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    let soundArray = ["key1", "key2", "key3", "key4", "key5", "key6", "key7", "key8", "key9", "key10", "key11", "key12", "key13", "key14", "key15", "key16", "key17", "key18", "key19", "key20"]
    
     var selectedFile : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func notePressed(_ sender: UIButton){
        
        selectedFile = soundArray[sender.tag-1]
        print(soundArray[sender.tag-1])
        playSound()
    }
    
    func playSound(){
        
        let soundURL = Bundle.main.url(forResource: selectedFile, withExtension: "wav" )
        
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        
        audioPlayer.play()
        
  
        
    }
    


    


}

