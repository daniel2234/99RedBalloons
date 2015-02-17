//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Daniel Kwiatkowski on 2015-02-16.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonsLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    var balloons:[Balloon] = []//array of instances
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonBarButtonItemPressed(sender: UIBarButtonItem) {
    }

    //this function shows a random photo based on the random number showed in the for loop
    //practice my switch statement
    func createBalloons () {
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            var balloon = Balloon()
            balloon.number = balloonCount
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            
            switch randomNumber {
            case 1 :
                balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 2 :
                balloon.image = UIImage(named: "RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage(named: "RedBalloon3.jpg")
            default:
                balloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            
            self.balloons.append(balloon)
        }
    }
}

