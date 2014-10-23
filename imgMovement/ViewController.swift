//
//  ViewController.swift
//  imgMovement
//
//  Created by Hayashidesu on 2014/10/22.
//  Copyright (c) 2014年 Hayashidesu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    var x:CGFloat = 125
    var y:CGFloat = 20
    var direction:CGFloat = 0
    
    @IBAction func pressUp(sender: UIButton) {
        var iv:UIImageView = img
        
        y -= 10
        iv.frame = CGRectMake(x, y, 100, 100)
        println("x:\(x) y:\(y)")
    }
    
    @IBAction func pressDown(sender: UIButton) {
        var iv:UIImageView = img
        
        y += 10
        iv.frame = CGRectMake(x, y, 100, 100)
        println("x:\(x) y:\(y)")
    }
    
    @IBAction func pressLeft(sender: UIButton) {
        var iv:UIImageView = img
        
        x -= 10
        iv.frame = CGRectMake(x, y, 100, 100)
        println("x:\(x) y:\(y)")
    }
    
    @IBAction func pressRight(sender: UIButton) {
        var iv:UIImageView = img
        
        x += 10
        iv.frame = CGRectMake(x, y, 100, 100)
        println("x:\(x) y:\(y)")
    }
    
    
    @IBAction func pressRotate(sender: UIButton) {
        var iv:UIImageView = img
        
        direction += 45
        if direction >= 360 {
            direction = 0
        }
        var angle:CGFloat = direction * CGFloat(M_PI) / 180.0
        iv.transform = CGAffineTransformMakeRotation(angle)
        println("d:\(direction)")
        
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

