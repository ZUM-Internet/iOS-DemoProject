//
//  Project+.swift
//  MyPlugin
//
//  Created by Siwon Kim on 1/4/24.
//

import ProjectDescription

extension Project {
    static var organizationName: String { "com.zum.ios" }
    
    public static func create(
        name: String,
        packages: [Package],
        settings: Settings? = nil,
        targets: [Target],
        schemes: [Scheme]
    ) -> Project {
        Project(
            name: projectName,
            organizationName: organizationName,
            options: .options(
                disableBundleAccessors: true,
                disableSynthesizedResourceAccessors: true
            ),
            packages: packages,
            settings: settings,
            targets: targets,
            schemes: schemes
        )
    }
}
