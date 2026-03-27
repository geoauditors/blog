import Foundation
import Ignite

struct NavBar: HTML {
    var body: some HTML {
        NavigationBar {
            Link("Home", target: "/")
            Link("About", target: "/about")
            Link("GEO Audit", target: "https://geoauditors.com")
                .target(.newWindow)
                .relationship(.noOpener, .noReferrer)
        } logo: {
            "GEO Audit Blog"
        }
    }
}
