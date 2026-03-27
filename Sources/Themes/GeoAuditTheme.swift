import Foundation
import Ignite

struct GeoAuditLightTheme: Theme {
    var colorScheme: ColorScheme = .light

    // Match the main site's dark theme as default
    var accent: Color = Color(hex: "#6366f1")
    var secondaryAccent: Color = Color(hex: "#818cf8")

    var link: Color = Color(hex: "#818cf8")
    var hoveredLink: Color = Color(hex: "#a5b4fc")

    var primary: Color = Color(hex: "#e4e6eb")
    var secondary: Color = Color(hex: "#8b8f9a")

    var background: Color = Color(hex: "#0f1117")
    var secondaryBackground: Color = Color(hex: "#1a1d27")
}

struct GeoAuditDarkTheme: Theme {
    var colorScheme: ColorScheme = .dark

    var accent: Color = Color(hex: "#6366f1")
    var secondaryAccent: Color = Color(hex: "#818cf8")

    var link: Color = Color(hex: "#818cf8")
    var hoveredLink: Color = Color(hex: "#a5b4fc")

    var primary: Color = Color(hex: "#e4e6eb")
    var secondary: Color = Color(hex: "#8b8f9a")

    var background: Color = Color(hex: "#0f1117")
    var secondaryBackground: Color = Color(hex: "#1a1d27")
}
