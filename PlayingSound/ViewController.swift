//
//  ViewController.swift
//  PlayingSound
//
//  Created by Samuel Shaw on 1/23/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var soundPlayer:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let fileLocation = NSBundle.mainBundle().pathForResource("dubstep", ofType: ".mp3")
        
        do {
            soundPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        
        catch
        {
            print(error)
        }
    }

    @IBAction func playButtonPressed(sender: AnyObject)
    {
        soundPlayer.play()
    }

    @IBAction func stopButtonPressed(sender: AnyObject)
    {
        soundPlayer.stop()
    }
}

