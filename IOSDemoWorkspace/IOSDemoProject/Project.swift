import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains IOSDemoProject App target and IOSDemoProject unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

let project = Project.create(
    name: projectName,
    packages: [
        .moya
    ],
    settings: .settings(
        configurations: [
            .debug(name: .debug),
            .release(name: .release),
            .debug(name: .inhouse)
        ]
    ),
    targets: [
        .create(
            targetName: projectName,
            product: .app,
            infoPlist: .init(), // TODO: - infoPlist 추가
            dependencies: [
                
            ], // TODO: - 하위 모듈 추가
            settings: .settings(
                configurations: [
                    .debug(
                        name: .debug,
                        xcconfig: .relativeToRoot("xcconfig/iosdemoapp.debug.xcconfig")
                    ),
                    .release(
                        name: .release,
                        xcconfig: .relativeToRoot("xcconfig/iosdemoapp.release.xcconfig")
                    ),
                    .debug(
                        name: .inhouse,
                        xcconfig: .relativeToRoot("xcconfig/iosdemoapp.inhouse.xcconfig")
                    )
                ]
            )
        )
    ],
    schemes: [
        .create(configuration: .debug),
        .create(configuration: .inhouse),
        .create(configuration: .release)
    ]
)
