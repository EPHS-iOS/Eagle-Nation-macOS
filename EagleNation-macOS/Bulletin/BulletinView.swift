//
//  BulletinView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct BulletinView: View {
    var bulletin = EPBulletin().bulletinList
    
    var body: some View {
        bulletin[0]
    }
}

struct Bulletin: View {
    var body: some View {
        Text("Insert here")
    }
}
