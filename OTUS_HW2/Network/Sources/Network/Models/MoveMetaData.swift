//
// MoveMetaData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MoveMetaData: Codable, JSONEncodable, Hashable {

    public var ailment: NamedAPIResource
    public var category: NamedAPIResource
    /** The minimum number of times this move hits. Null if it always only hits once. */
    public var minHits: Int?
    /** The maximum number of times this move hits. Null if it always only hits once. */
    public var maxHits: Int?
    /** The minimum number of turns this move continues to take effect. Null if it always only lasts one turn. */
    public var minTurns: Int?
    /** The maximum number of turns this move continues to take effect. Null if it always only lasts one turn. */
    public var maxTurns: Int?
    /** The amount of hp gained by the attacking Pokemon when it uses this move. */
    public var drain: Int?
    /** The amount of hp gained by the target Pokemon when it receives this move. */
    public var healing: Int?
    /** Critical hit rate bonus. */
    public var critRate: Int?
    /** The chance of the target being inflicted with the status condition ailment. */
    public var ailmentChance: Int?
    /** The chance of the target flinching when hit by this move. */
    public var flinchChance: Int?
    /** The chance of the attacking Pokemon lowering the target's stat. */
    public var statChance: Int?

    public init(ailment: NamedAPIResource, category: NamedAPIResource, minHits: Int? = nil, maxHits: Int? = nil, minTurns: Int? = nil, maxTurns: Int? = nil, drain: Int? = nil, healing: Int? = nil, critRate: Int? = nil, ailmentChance: Int? = nil, flinchChance: Int? = nil, statChance: Int? = nil) {
        self.ailment = ailment
        self.category = category
        self.minHits = minHits
        self.maxHits = maxHits
        self.minTurns = minTurns
        self.maxTurns = maxTurns
        self.drain = drain
        self.healing = healing
        self.critRate = critRate
        self.ailmentChance = ailmentChance
        self.flinchChance = flinchChance
        self.statChance = statChance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ailment
        case category
        case minHits = "min_hits"
        case maxHits = "max_hits"
        case minTurns = "min_turns"
        case maxTurns = "max_turns"
        case drain
        case healing
        case critRate = "crit_rate"
        case ailmentChance = "ailment_chance"
        case flinchChance = "flinch_chance"
        case statChance = "stat_chance"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ailment, forKey: .ailment)
        try container.encode(category, forKey: .category)
        try container.encodeIfPresent(minHits, forKey: .minHits)
        try container.encodeIfPresent(maxHits, forKey: .maxHits)
        try container.encodeIfPresent(minTurns, forKey: .minTurns)
        try container.encodeIfPresent(maxTurns, forKey: .maxTurns)
        try container.encodeIfPresent(drain, forKey: .drain)
        try container.encodeIfPresent(healing, forKey: .healing)
        try container.encodeIfPresent(critRate, forKey: .critRate)
        try container.encodeIfPresent(ailmentChance, forKey: .ailmentChance)
        try container.encodeIfPresent(flinchChance, forKey: .flinchChance)
        try container.encodeIfPresent(statChance, forKey: .statChance)
    }
}

