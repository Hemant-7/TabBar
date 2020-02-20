//
//  ViewController.swift
//  TabBarDemo
//
//  Created by Brain Tech on 22/11/1941 Saka.
//  Copyright © 1941 Brain Tech. All rights reserved.
//

import UIKit

class TabVC: UIViewController {

    var controller: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnFirst(_ sender: UIButton) {
        
        let childrens = self.children
        
        if childrens.count > 0{
            controller.willMove(toParent: nil)
            controller.view.removeFromSuperview()
            controller.removeFromParent()
            
            controller = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "FirstVC") as? FirstVC
            
            controller.view.frame = CGRect(x: 0, y: 0, width: view.frame.width , height:view.frame.height - 56)
            controller.willMove(toParent: self)
            self.view.addSubview(controller.view)
            self.addChild(controller)
            controller.didMove(toParent: self)
            
        }else{
            controller = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "FirstVC") as? FirstVC
            
            controller.view.frame = CGRect(x: 0, y: 0, width: view.frame.width , height:view.frame.height - 56)
            controller.willMove(toParent: self)
            self.view.addSubview(controller.view)
            self.addChild(controller)
            controller.didMove(toParent: self)
            
        }
    }
    
    @IBAction func btnSecond(_ sender: UIButton) {
        
        let childrens = self.children
        
        if childrens.count > 0{
            controller.willMove(toParent: nil)
            controller.view.removeFromSuperview()
            controller.removeFromParent()
            
            controller = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
            
            controller.view.frame = CGRect(x: 0, y: 0, width: view.frame.width , height:view.frame.height - 56)
            controller.willMove(toParent: self)
            self.view.addSubview(controller.view)
            self.addChild(controller)
            controller.didMove(toParent: self)
            
        }else{
            controller = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
            
            controller.view.frame = CGRect(x: 0, y: 0, width: view.frame.width , height:view.frame.height - 56)
            controller.willMove(toParent: self)
            self.view.addSubview(controller.view)
            self.addChild(controller)
            controller.didMove(toParent: self)
            
        }
    }
}

