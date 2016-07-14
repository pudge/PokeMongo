//
//  ViewController.swift
//  PokeMongo
//
//  Created by Chris Nandor on 2016.07.14.
//  Copyright © 2016 Chris Nandor. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var mongoSounds = [
        NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mongo1", ofType: "mp4")!),
        NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mongo2", ofType: "mp4")!)
    ]
    var mongoPlayer = AVAudioPlayer()

    @IBOutlet weak var mongoButton: UIButton!

    
    @IBAction func mongoPress(sender: AnyObject) {
        
        do {
            try mongoPlayer = AVAudioPlayer(contentsOfURL: mongoSounds[Int(arc4random_uniform(UInt32(mongoSounds.count)))]);
            //
            mongoPlayer.prepareToPlay()
            mongoPlayer.numberOfLoops = 0
            mongoPlayer.play()
        }
        catch {
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

