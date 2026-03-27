import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = GeoAuditorsBlog()
        do {
            try await site.publish(buildDirectoryPath: "docs")
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct GeoAuditorsBlog: Site {
    var name = "GEO Audit Blog"
    var titleSuffix = " | GEO Audit"
    var description: String? = "Learn how to optimize your website for AI search visibility. Practical guides on GEO, citability, structured data, and AI crawlers."

    var language: Language = .english
    var url = URL(string: "https://blog.geoauditors.com")!
    var builtInIconsEnabled: BootstrapOptions = .localBootstrap
    var author = "GEO Audit"

    var feedConfiguration: FeedConfiguration? = FeedConfiguration(
        mode: .full,
        contentCount: 20,
        path: "/feed.rss"
    )

    var homePage = Home()
    var tagPage = Tags()
    var layout = MainLayout()

    var lightTheme: (any Theme)? = GeoAuditLightTheme()
    var darkTheme: (any Theme)? = GeoAuditDarkTheme()

    var staticPages: [any StaticPage] {
        About()
    }

    var articlePages: [any ArticlePage] {
        BlogPost()
    }
}

struct Tags: TagPage {
    var body: some HTML {
        Text("Articles tagged with: ")
            .font(.title1)
    }
}
