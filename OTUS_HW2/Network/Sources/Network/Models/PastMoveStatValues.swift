//
// PastMoveStatValues.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PastMoveStatValues: Codable, JSONEncodable, Hashable {

    static let accuracyRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 100, exclusiveMaximum: false, multipleOf: nil)
    static let effectChanceRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 100, exclusiveMaximum: false, multipleOf: nil)
    static let powerRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let ppRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    /** The percent value of how likely this move is to be successful. */
    public var accuracy: Int
    /** The percent value of effect occurring. */
    public var effectChance: Int?
    /** The base power of this move with a value of 0 if it does not have a base power. */
    public var power: Int
    /** The power points this move has left. */
    public var pp: Int
    /** The list of previous effects this move has had across version groups. */
    public var effectEntries: [PastMoveStatValuesEffectEntriesInner]?
    public var type: ModelType?

    public init(accuracy: Int, effectChance: Int? = nil, power: Int, pp: Int, effectEntries: [PastMoveStatValuesEffectEntriesInner]? = nil, type: ModelType? = nil) {
        self.accuracy = accuracy
        self.effectChance = effectChance
        self.power = power
        self.pp = pp
        self.effectEntries = effectEntries
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accuracy
        case effectChance = "effect_chance"
        case power
        case pp
        case effectEntries = "effect_entries"
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accuracy, forKey: .accuracy)
        try container.encodeIfPresent(effectChance, forKey: .effectChance)
        try container.encode(power, forKey: .power)
        try container.encode(pp, forKey: .pp)
        try container.encodeIfPresent(effectEntries, forKey: .effectEntries)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

