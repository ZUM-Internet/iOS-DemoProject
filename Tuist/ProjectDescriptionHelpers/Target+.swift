//
//  Target+.swift
//  ProjectDescriptionHelpers
//
//  Created by Siwon Kim on 1/4/24.
//

import ProjectDescription

extension Target {
    public static func create(
        targetName: String,
        product: Product,
        infoPlist: [String: Plist.Value],
        sources: ProjectDescription.SourceFilesList = ["Sources/**"],
        isNeedResource: Bool = false,
        entitlements: Entitlements? = nil,
        scripts: [TargetScript] = [],
        dependencies: [TargetDependency],
        settings: Settings? = nil
    ) -> Target {
        Target(
            name: targetName,
            destinations: [.iPhone],
            product: product,
            bundleId: "${PRODUCT_BUNDLE_IDENTIFIER}",
            deploymentTargets: .iOS("16.0"),
            infoPlist: .extendingDefault(with: infoPlist),
            sources: sources,
            resources: isNeedResource ? ["Resources/**"] : nil,
            entitlements: entitlements,
            scripts: scripts,
            dependencies: dependencies,
            settings: settings
        )
    }
}
