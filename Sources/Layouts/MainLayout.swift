import Foundation
import Ignite

struct MainLayout: Layout {
    @Environment(\.articles) var articles

    var body: some Document {
        Head {
            MetaLink(href: "/css/blog.css", rel: .stylesheet)
        }

        Body {
            NavBar()

            content

            Spacer()

            Footer()
        }
    }
}
