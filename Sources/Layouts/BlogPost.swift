import Foundation
import Ignite

struct BlogPost: ArticlePage {
    var body: some HTML {
        Text(article.title)
            .font(.title1)

        if let date = article.date {
            Text(date.formatted(date: .long, time: .omitted))
                .foregroundStyle(.secondary)
                .font(.title6)
                .margin(.bottom, .large)
        }

        if let tags = article.tags, !tags.isEmpty {
            Group {
                if let tagLinks = article.tagLinks() {
                    Text {
                        for link in tagLinks {
                            link
                        }
                    }
                    .font(.title6)
                }
            }
            .margin(.bottom, .medium)
        }

        Text(article.text)
    }
}
