//
// MoveTarget.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Targets moves can be directed at during battle. Targets can be Pokémon, adjacent positions, all opponents, etc. */
public struct MoveTarget: Codable, JSONEncodable, Hashable {

    /** The identifier for this move target resource */
    public var id: Int
    /** The name for this move target resource */
    public var name: String
    /** The description of this move target listed in different languages */
    public var descriptions: [Description]

    public init(id: Int, name: String, descriptions: [Description]) {
        self.id = id
        self.name = name
        self.descriptions = descriptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case descriptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(descriptions, forKey: .descriptions)
    }
}

