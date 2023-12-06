//
//  AppIntent.swift
//  BarkLogWidget
//
//  Created by johnny basgallop on 06/12/2023.
//

import WidgetKit
import AppIntents

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource = "Configuration"
    static var description = IntentDescription("This is an example widget.")

    // An example configurable parameter.
    @Parameter(title: "Favorite Emoji", default: false)
    var favoriteEmoji: Bool
}
