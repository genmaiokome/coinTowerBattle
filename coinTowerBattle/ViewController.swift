//
//  ViewController.swift
//  コインタワーバトル
//
//  Created by 渡辺涼介 on 2020/11/28.
//  Copyright © 2020 ryosuke.watanabe. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let skView = self.view as! SKView
        
        skView.showsFPS = true
        
        skView.showsNodeCount = true
        
        let scene = TitleScene(size:skView.frame.size)
        
        skView.presentScene(scene)
        
    }


}

