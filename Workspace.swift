//
//  Workspace.swift
//  iOS-DemoProjectManifests
//
//  Created by Siwon Kim on 1/4/24.
//

import ProjectDescription
import ProjectDescriptionHelpers


//private func projectNameWith(module: Module) -> Path {
//    return "\(workspaceName)/\(module.name)"
//}

let workspace = Workspace(
    name: workspaceName,
    projects: [
        "\(workspaceName)/\(projectName)"
    ]
)
