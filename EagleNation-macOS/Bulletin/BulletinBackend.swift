//
//  BulletinBackend.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 4/1/21.
//

import Foundation

struct BulletinBackend {
    
    var bulletinList = [
        Bulletin(date: Date())
    ]
    struct Bulletin: Identifiable {
        var date: Date
        var content: String?
        var file: CGPDFDocument?
        var id = UUID()
    }
}
