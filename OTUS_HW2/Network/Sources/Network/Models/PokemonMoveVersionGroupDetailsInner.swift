//
// PokemonMoveVersionGroupDetailsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PokemonMoveVersionGroupDetailsInner: Codable, JSONEncodable, Hashable {

    /** The minimum level to learn the move */
    public var levelLearnedAt: Int
    public var moveLearnMethod: NamedAPIResource
    public var versionGroup: NamedAPIResource

    public init(levelLearnedAt: Int, moveLearnMethod: NamedAPIResource, versionGroup: NamedAPIResource) {
        self.levelLearnedAt = levelLearnedAt
        self.moveLearnMethod = moveLearnMethod
        self.versionGroup = versionGroup
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case levelLearnedAt = "level_learned_at"
        case moveLearnMethod = "move_learn_method"
        case versionGroup = "version_group"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(levelLearnedAt, forKey: .levelLearnedAt)
        try container.encode(moveLearnMethod, forKey: .moveLearnMethod)
        try container.encode(versionGroup, forKey: .versionGroup)
    }
}

