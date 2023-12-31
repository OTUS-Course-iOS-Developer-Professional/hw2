//
// BerryFlavor.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BerryFlavor: Codable, JSONEncodable, Hashable {

    /** The identifier for this berry flavor resource */
    public var id: Int
    /** The name for this berry flavor resource */
    public var name: String
    /** A list of the berries with this flavor */
    public var berries: [BerryFlavorMap]?

    public init(id: Int, name: String, berries: [BerryFlavorMap]? = nil) {
        self.id = id
        self.name = name
        self.berries = berries
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case berries
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(berries, forKey: .berries)
    }
}

