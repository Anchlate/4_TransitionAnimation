//
//  ViewController.swift
//  4_TransitionAnimation
//
//  Created by PENG BAI on 16/1/26.
//  Copyright © 2016年 bp1010. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var animationContainerView: UIView?
    var newView: UIImageView?
    var otherView: UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        animationContainerView = UIView(frame: view.bounds)
        animationContainerView!.frame = view.bounds;
        animationContainerView?.backgroundColor = UIColor.red
        
        view.addSubview(animationContainerView!)
        
        newView = UIImageView(image: UIImage(named: "banner")!)
        newView!.center = animationContainerView!.center
        
        otherView = UIImageView(image: UIImage(named: "other")!)
        otherView!.center = animationContainerView!.center
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        

//        test1()
        
//        test2()
        
        test3()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func test1() {
        
         UIView.transition(with: animationContainerView!,
         duration: 0.33,
         options: [.transitionFlipFromBottom, .curveEaseOut],
         animations: {
         
         self.animationContainerView!.addSubview(self.newView!)
         
         },completion:nil)
 
    }
    
    func test2() {
        
        UIView.transition(with: animationContainerView!, duration: 0.33, options: [.curveEaseOut, .transitionFlipFromBottom], animations: {
            
            self.animationContainerView!.addSubview(self.newView!)
            
        }) { (true) in
            
            
            UIView.transition(with: self.newView!, duration: 5.33, options: [.curveEaseOut, .transitionFlipFromBottom], animations: {
                
                self.newView!.isHidden = true
                
                }, completion: nil)
            
        }
    }
    
    func test3() {
        
        self.animationContainerView!.addSubview(self.newView!)
        
        UIView.transition(from: self.newView!, to: self.otherView!, duration: 5.0, options: .transitionFlipFromTop, completion: nil)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

