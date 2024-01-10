//
//  Dependencies.swift
//  ProjectDescriptionHelpers
//
//  Created by Siwon Kim on 1/10/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

// TODO: - tuist 4.0 업데이트시 manifest 파일에서 직접 Packages.swift 관리하는 방식으로 변경
let dependencies = Dependencies(
    swiftPackageManager: .init(
        [.moya],
        productTypes: ["Moya": .framework],
        baseSettings: .settings(
            configurations: [
                .debug(name: .debug),
                .debug(name: .inhouse),
                .release(name: .release)
            ]
        )
    )
)
