//
//  NewsView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct NewsView: View {
    let newsBackend = EPNews()
    var newsBlock: Int = EPNews().newsBlock
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.windowBackgroundColor))
                    .shadow(radius: 10)
                VStack(alignment: .leading, spacing: 10) {
                    NewsTitle("Critical Information")
                    HStack {
                        SmallNewsBlock(title: newsBackend.news[newsBlock - 1].title,
                                       image: newsBackend.news[newsBlock - 1].image)
                        SmallNewsBlock(title: newsBackend.news[newsBlock].title,
                                       image: newsBackend.news[newsBlock].image)
                    }
                }.padding()
            }.frame(height: 300)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.windowBackgroundColor))
                    .shadow(radius: 10)
                VStack(alignment: .leading, spacing: 10) {
                    NewsTitle("Recent News")
                    VStack {
                        ForEach(newsBackend.news) { article in
                            WideNewsBlock(title: article.title,
                                          content: article.content,
                                          image: article.image)
                                .frame(height: 100)
                        }
                    }
                }.padding()
            }
        }
    }
}

struct NewsTitle: View {
    init(_ title: String) { self.title = title }
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.custom("OpenSans-Bold", size: 28))
                .foregroundColor(.red)
            Spacer()
            //Button("Prev", action: newsBackend.prevArticle(current: 1))
            //Button("Next", action: newsBackend.nextArticle(current: 1))
        }
    }
}

struct SmallNewsBlock: View {
    var title: String
    var image: Image

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(.windowBackgroundColor))
                .shadow(radius: 10)
            VStack(alignment: .leading, spacing: 0) {
                image
                    .centerCropped()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                    .layoutPriority(1)
                Text(title)
                    .font(.headline)
                    .padding()
            }
        }
    }
}

struct WideNewsBlock: View {
    var title: String
    var content: String
    var image: Image
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(.windowBackgroundColor))
                .shadow(radius: 10)
            HStack {
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(10)
                    .layoutPriority(1)
                VStack {
                    Text(title)
                    //Text(content)
                }
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            
    }
}
