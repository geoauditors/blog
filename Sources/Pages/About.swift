import Foundation
import Ignite

struct About: StaticPage {
    var title = "About GEO Audit"
    var description = "GEO Audit analyzes websites for AI and SEO visibility, measuring how well a site can be discovered, understood, and cited by AI systems."

    var body: some HTML {
        Text("About GEO Audit")
            .font(.title1)
            .fontWeight(.bold)

        Text("GEO Audit analyzes websites for AI and SEO visibility, measuring how well a site can be discovered, understood, and cited by AI systems like ChatGPT, Claude, Perplexity, and Google AI Overviews.")
            .margin(.bottom, .large)

        Text("How It Works")
            .font(.title2)

        Text("Submit a URL and GEO Audit crawls your site, runs 17 specialized analysis tools, and returns a scored report with prioritized recommendations across six dimensions of AI visibility: Citability, E-E-A-T, Technical SEO, Schema Markup, Brand Authority, and Platform Readiness.")
            .margin(.bottom, .large)

        Text {
            Link("Run a Free Audit", target: "https://geoauditors.com")
                .target(.newWindow)
                .relationship(.noOpener, .noReferrer)
        }
        .font(.title4)
    }
}
