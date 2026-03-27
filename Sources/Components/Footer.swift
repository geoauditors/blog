import Foundation
import Ignite

struct Footer: HTML {
    var body: some HTML {
        Divider()

        Group {
            Text {
                "© 2026 "
                Link("GEO Audit", target: "https://geoauditors.com")
                    .target(.newWindow)
                    .relationship(.noOpener, .noReferrer)
                " — AI Visibility Analysis for Your Website"
            }
            .font(.body)
            .foregroundStyle(.secondary)
            .horizontalAlignment(.center)
        }
        .padding()
    }
}
