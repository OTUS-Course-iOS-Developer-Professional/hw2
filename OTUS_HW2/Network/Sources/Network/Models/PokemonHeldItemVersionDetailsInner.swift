//
// PokemonHeldItemVersionDetailsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PokemonHeldItemVersionDetailsInner: Codable, JSONEncodable, Hashable {

    public var rarity: Int?
    public var version: Version?

    public init(rarity: Int? = nil, version: Version? = nil) {
        self.rarity = rarity
        self.version = version
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rarity
        case version
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(rarity, forKey: .rarity)
        try container.encodeIfPresent(version, forKey: .version)
    }
}

