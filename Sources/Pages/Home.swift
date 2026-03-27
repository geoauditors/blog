import Foundation
import Ignite

struct Home: StaticPage {
    @Environment(\.articles) var articles

    var title = "GEO Audit Blog"
    var description = "Learn how to optimize your website for AI search visibility. Practical guides on GEO, citability, structured data, and AI crawlers."

    var body: some HTML {
        Section {
            Text("AI Search Visibility")
                .font(.title1)
                .fontWeight(.bold)

            Text("Practical guides to help your website get discovered, understood, and cited by AI systems.")
                .font(.lead)
                .foregroundStyle(.secondary)
                .margin(.bottom, .xLarge)
        }

        Section {
            for article in articles.all.sorted(by: {
                $0.date > $1.date
            }) {
                Group {
                    Text {
                        Link(article.title, target: article.path)
                    }
                    .font(.title3)
                    .fontWeight(.semibold)

                    Text(article.date.formatted(date: .long, time: .omitted))
                        .foregroundStyle(.secondary)
                        .font(.body)

                    Text(article.description)
                        .margin(.top, .small)

                    if let tags = article.tags, !tags.isEmpty {
                        if let tagLinks = article.tagLinks() {
                            Text {
                                for link in tagLinks {
                                    link
                                }
                            }
                            .font(.title6)
                        }
                    }

                    Divider()
                }
                .margin(.bottom, .medium)
            }
        }
    }
}
