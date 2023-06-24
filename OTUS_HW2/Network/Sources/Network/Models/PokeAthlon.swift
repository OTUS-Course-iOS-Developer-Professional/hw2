//
// PokeAthlon.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PokeAthlon: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var name: String
    public var names: [PokeathlonStatName]

    public init(id: Int, name: String, names: [PokeathlonStatName]) {
        self.id = id
        self.name = name
        self.names = names
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case names
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(names, forKey: .names)
    }
}

