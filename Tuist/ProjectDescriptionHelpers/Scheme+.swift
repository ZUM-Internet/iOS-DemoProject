//
//  Scheme+.swift
//  ProjectDescriptionHelpers
//
//  Created by Siwon Kim on 1/4/24.
//

import ProjectDescription

extension Scheme {
    public static func create(
        configuration: ProjectDescription.ConfigurationName
    ) -> Scheme {
        Scheme(
            name: "\(projectName)-\(configuration.rawValue)",
            buildAction: .buildAction(
                targets: [TargetReference.init(stringLiteral: projectName)]
            ),
            runAction: .runAction(configuration: configuration),
            archiveAction: .archiveAction(configuration: configuration),
            profileAction: .profileAction(configuration: configuration),
            analyzeAction: .analyzeAction(configuration: configuration)
        )
    }
}
