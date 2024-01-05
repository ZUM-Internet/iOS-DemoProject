//
//  InfoPlist.swift
//  ProjectDescriptionHelpers
//
//  Created by Siwon Kim on 1/4/24.
//

import ProjectDescription

public let infoPlist: [String: Plist.Value] = [
    "UILaunchScreen": [:],
    "UIUserInterfaceStyle": "Light",
    "CFBundleDisplayName": "$(DISPLAY_NAME)"
]
