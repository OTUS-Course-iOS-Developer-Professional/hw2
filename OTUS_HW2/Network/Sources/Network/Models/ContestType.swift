//
// ContestType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ContestType: Codable, JSONEncodable, Hashable {

    /** The identifier for this contest type resource */
    public var id: Int
    /** The name for this contest type resource */
    public var name: String
    public var berryFlavor: BerryFlavor
    /** The name of this contest type listed in different languages */
    public var names: [ContestName]

    public init(id: Int, name: String, berryFlavor: BerryFlavor, names: [ContestName]) {
        self.id = id
        self.name = name
        self.berryFlavor = berryFlavor
        self.names = names
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case berryFlavor = "berry_flavor"
        case names
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(berryFlavor, forKey: .berryFlavor)
        try container.encode(names, forKey: .names)
    }
}

