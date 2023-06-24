//
// ContestEffect.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ContestEffect: Codable, JSONEncodable, Hashable {

    /** The identifier for this contest effect resource */
    public var id: Int
    /** The base number of hearts the user of this move gets */
    public var appeal: Int
    /** The base number of hearts the user's opponent loses */
    public var jam: Int
    /** The flavor text of this contest effect listed in different languages */
    public var effectEntries: [VerboseEffect]
    /** The flavor text of this contest effect listed in different languages */
    public var flavorTextEntries: [FlavorText]

    public init(id: Int, appeal: Int, jam: Int, effectEntries: [VerboseEffect], flavorTextEntries: [FlavorText]) {
        self.id = id
        self.appeal = appeal
        self.jam = jam
        self.effectEntries = effectEntries
        self.flavorTextEntries = flavorTextEntries
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case appeal
        case jam
        case effectEntries = "effect_entries"
        case flavorTextEntries = "flavor_text_entries"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(appeal, forKey: .appeal)
        try container.encode(jam, forKey: .jam)
        try container.encode(effectEntries, forKey: .effectEntries)
        try container.encode(flavorTextEntries, forKey: .flavorTextEntries)
    }
}

