//
//  ViewController.swift
//  Snap
//
//  Created by Nikolas Krecu on 3/20/19.
//  Copyright © 2019 Nikolas Krecu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var squareView: UIView!
    var snap: UISnapBehavior!
    var animator: UIDynamicAnimator!
    
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        let tapPoint: CGPoint = sender.location(in: view)
        
        
        if (snap != nil){
            animator.removeBehavior(snap)
        }
        
        snap = UISnapBehavior(item: squareView, snapTo: tapPoint)
        animator.addBehavior(snap)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        squareView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        squareView.backgroundColor = UIColor.blue
        view.addSubview(squareView)
        
        animator = UIDynamicAnimator(referenceView: view)
    }
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
        
        
    }


