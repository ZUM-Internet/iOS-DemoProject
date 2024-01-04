//
//  Package+.swift
//  ProjectDescriptionHelpers
//
//  Created by Siwon Kim on 1/4/24.
//

import ProjectDescription

// Package - Swift Package Manager를 사용하여 관리되는 외부 종속성(라이브러리 또는 프레임워크)
public extension Package {
    static let moya: Package = .package(
        url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.0")
    )
}
