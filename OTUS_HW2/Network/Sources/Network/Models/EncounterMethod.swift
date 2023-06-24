//
// EncounterMethod.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EncounterMethod: Codable, JSONEncodable, Hashable {

    /** The identifier for this encounter method resource */
    public var id: Int
    /** The name for this encounter method resource */
    public var name: String
    /** A good value for sorting */
    public var order: Int

    public init(id: Int, name: String, order: Int) {
        self.id = id
        self.name = name
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(order, forKey: .order)
    }
}
