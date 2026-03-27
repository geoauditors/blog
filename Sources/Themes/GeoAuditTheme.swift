import Foundation
import Ignite

struct GeoAuditLightTheme: Theme {
    var colorScheme: ColorScheme = .light

    var accent: Color = Color(hex: "#1a73e8")
    var secondaryAccent: Color = Color(hex: "#2d2c2f")

    var link: Color = Color(hex: "#1a73e8")
    var hoveredLink: Color = Color(hex: "#1558b0")
}

struct GeoAuditDarkTheme: Theme {
    var colorScheme: ColorScheme = .dark

    var accent: Color = Color(hex: "#4da3ff")
    var secondaryAccent: Color = Color(hex: "#4d4c4f")

    var link: Color = Color(hex: "#4da3ff")
    var hoveredLink: Color = Color(hex: "#7dbdff")
}
