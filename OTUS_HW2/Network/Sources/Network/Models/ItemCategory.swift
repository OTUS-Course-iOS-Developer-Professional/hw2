//
// ItemCategory.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ItemCategory: Codable, JSONEncodable, Hashable {

    /** The identifier for this item category resource */
    public var id: Int?
    /** The name for this item category resource */
    public var name: String?
    /** A list of items that are a part of this category */
    public var items: [NamedAPIResource]?

    public init(id: Int? = nil, name: String? = nil, items: [NamedAPIResource]? = nil) {
        self.id = id
        self.name = name
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(items, forKey: .items)
    }
}

