//
// EncounterConditionValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EncounterConditionValue: Codable, JSONEncodable, Hashable {

    /** The identifier for this encounter condition value resource */
    public var id: Int
    /** The name for this encounter condition value resource */
    public var name: String
    public var condition: NamedAPIResource
    /** The name of this encounter condition value listed in different languages */
    public var names: [Name]

    public init(id: Int, name: String, condition: NamedAPIResource, names: [Name]) {
        self.id = id
        self.name = name
        self.condition = condition
        self.names = names
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case condition
        case names
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(condition, forKey: .condition)
        try container.encode(names, forKey: .names)
    }
}

