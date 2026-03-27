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
            Text("GEO Audit Blog")
                .font(.title4)
                .fontWeight(.bold)
        }
    }
}
