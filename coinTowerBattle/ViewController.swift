//
//  ViewController.swift
//  コインタワーバトル
//
//  Created by 渡辺涼介 on 2020/11/28.
//  Copyright © 2020 ryosuke.watanabe. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let userDefaults:UserDefaults = UserDefaults.standard
    var alertController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor(red: 0, green: 200, blue: 255, alpha: 1)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {

        let name = userDefaults.string(forKey: "NAME")
        
        if name == nil {
            let firstTimeViewController = self.storyboard?.instantiateViewController(withIdentifier: "name")
            self.present(firstTimeViewController!, animated: true, completion: nil)
        }
    }
    
    @IBAction func freeMatchButton(_ sender: Any) {
    }
    
    @IBAction func joinMatchButton(_ sender: Any) {
    }
    
    @IBAction func createMatchButton(_ sender: Any) {
        let roomNumber = String(Int.random(in: 100000 ..< 1000000))
        print(roomNumber)
        let roomRef = Firestore.firestore().collection(Const.roomPath).document()
        let name = userDefaults.string(forKey: "NAME")
        let roomDic = [
            "name": name!,
            "roomNumber": roomNumber
        ] as [String : Any]
        roomRef.setData(roomDic)
    }
    
    @IBAction func settingButton(_ sender: Any) {
        let firstTimeViewController = self.storyboard?.instantiateViewController(withIdentifier: "name")
        self.present(firstTimeViewController!, animated: true, completion: nil)
    }
    
}

