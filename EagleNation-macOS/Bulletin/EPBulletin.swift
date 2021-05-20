//
//  EPBulletin.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 4/1/21.
//

import SwiftUI

class EPBulletin {
    private var bulletin = BulletinBackend()
    
    var bulletinList: [BulletinBackend.Bulletin] {
        bulletin.bulletinList
    }
}
