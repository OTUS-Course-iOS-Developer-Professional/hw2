//
// MoveContestEffect.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MoveContestEffect: Codable, JSONEncodable, Hashable {

    public var url: String

    public init(url: String) {
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
    }
}

