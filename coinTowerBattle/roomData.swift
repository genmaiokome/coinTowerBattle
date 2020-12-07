//
//  roomData.swift
//  coinTowerBattle
//
//  Created by 渡辺涼介 on 2020/12/04.
//  Copyright © 2020 ryosuke.watanabe. All rights reserved.
//

import UIKit
import Firebase

class roomData: NSObject {
    var name: String?
    var roomNumber: String?
    
    init(document: QueryDocumentSnapshot) {
        let roomDic = document.data()
        self.name = roomDic["name"] as? String
        self.roomNumber = roomDic["roomNumber"] as? String
    }
}
