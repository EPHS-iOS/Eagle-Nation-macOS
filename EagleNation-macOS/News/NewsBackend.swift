//
//  NewsBackend.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/21/21.
//

import Foundation
import SwiftUI

struct NewsBackend {
    
    var news = [
        Article(title: "Graduation Tickets Now Available", content: "body", image: Image("graduation-tickets")),
        Article(title: " EP Student Accepted into a National Elite STEM Program", content: "body1", image: Image("STEM")),
        Article(title: "Vaccine Updates for Families", content: "body2", image: Image("vaccine")),
        Article(title: "MN Teacher of the Year Nominees", content: "body3", image: Image("teacher")),
        Article(title: "Stay Actively Involved in Parent Teacher Conferences", content: "body4", image: Image("conf"))
    ]
    
    mutating func newArticle(title: String, content: String, image: Image) {
        news.append(Article(title: title, content: content, image: image))
    }
    
    var newsBlock: Int = 1
    
    func prevArticle(newsBlock: Int) -> Int {
        if newsBlock == 1 {
            return newsBlock
        } else {
            return newsBlock - 1
        }
    }
    
    func nextArticle(newsBlock: Int) -> Int {
        if newsBlock == news.count {
            return newsBlock
        } else {
            return newsBlock + 1
        }
    }
    
    struct Article: Identifiable {
        var title: String
        var content: String
        var image: Image
        var id = UUID()
    }
}
