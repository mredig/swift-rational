// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "swift-big-rational",
	products: [
		.library(
			name: "BigRationalModule",
			targets: ["BigRationalModule"]
		)
	],
	dependencies: [
		.package(
			url: "https://github.com/apple/swift-numerics",
			from: "1.0.0"
		),
//		.package(
//			url: "https://github.com/attaswift/BigInt.git",
//			.upToNextMajor(from: "5.5.0")
//		),
		.package(
			url: "https://github.com/mredig/BigInt.git",
			branch: "decimal-perf2"
		),
	],
	targets: [
		.target(
			name: "BigRationalModule",
			dependencies: [
				.product(
					name: "RealModule",
					package: "swift-numerics"
				),
				"BigInt",
			]
		),
		.testTarget(
			name: "BigRationalModuleTests",
			dependencies: ["BigRationalModule"]
		)
	]
)
