//
//  firstTimeViewController.swift
//  coinTowerBattle
//
//  Created by 渡辺涼介 on 2020/12/04.
//  Copyright © 2020 ryosuke.watanabe. All rights reserved.
//

import UIKit

class firstTimeViewController: UIViewController {
    
    let userDefaults:UserDefaults = UserDefaults.standard
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func nameDecideButton(_ sender: Any) {
        if textField.text != "" {
            var name = userDefaults.string(forKey: "NAME")
            name = textField.text
            userDefaults.set(name, forKey: "NAME")
            userDefaults.synchronize()
            self.dismiss(animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0, green: 200, blue: 255, alpha: 1)
        self.textField.becomeFirstResponder()
        let name = userDefaults.string(forKey: "NAME")
        textField.text = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
