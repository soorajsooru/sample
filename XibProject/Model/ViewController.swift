//
//  ViewController.swift
//  XibProject
//
//  Created by sooraj on 19/09/18.
//  Copyright © 2018 sooraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var FirstView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.addSubview(FirstView)
        if let view2 = Bundle.main.loadNibNamed("FirstView", owner: self, options: nil)?.first as? Second{
            self.view.addSubview(view2)
        }
        if let view3 = Bundle.main.loadNibNamed("third", owner: self, options: nil)?.first as? third{
            view3.frame.origin.y = self.view.frame.height - view3.frame.height
            self.view.addSubview(view3)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

