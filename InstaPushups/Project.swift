import ProjectDescription

let project = Project(
    name: "InstaPushups",
    targets: [
        .target(
            name: "InstaPushups",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.InstaPushups",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "InstaPushups/Sources",
                "InstaPushups/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "InstaPushupsTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.InstaPushupsTests",
            infoPlist: .default,
            buildableFolders: [
                "InstaPushups/Tests"
            ],
            dependencies: [.target(name: "InstaPushups")]
        ),
    ]
)
