//
// TypeDamageRelations.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TypeDamageRelations: Codable, JSONEncodable, Hashable {

    public var doubleDamageFrom: [TypeDamageRelationsDoubleDamageFromInner]?
    public var doubleDamageTo: [TypeDamageRelationsDoubleDamageFromInner]?
    public var halfDamageFrom: [TypeDamageRelationsDoubleDamageFromInner]?
    public var halfDamageTo: [TypeDamageRelationsDoubleDamageFromInner]?
    public var noDamageFrom: [TypeDamageRelationsDoubleDamageFromInner]?
    public var noDamageTo: [TypeDamageRelationsDoubleDamageFromInner]?

    public init(doubleDamageFrom: [TypeDamageRelationsDoubleDamageFromInner]? = nil, doubleDamageTo: [TypeDamageRelationsDoubleDamageFromInner]? = nil, halfDamageFrom: [TypeDamageRelationsDoubleDamageFromInner]? = nil, halfDamageTo: [TypeDamageRelationsDoubleDamageFromInner]? = nil, noDamageFrom: [TypeDamageRelationsDoubleDamageFromInner]? = nil, noDamageTo: [TypeDamageRelationsDoubleDamageFromInner]? = nil) {
        self.doubleDamageFrom = doubleDamageFrom
        self.doubleDamageTo = doubleDamageTo
        self.halfDamageFrom = halfDamageFrom
        self.halfDamageTo = halfDamageTo
        self.noDamageFrom = noDamageFrom
        self.noDamageTo = noDamageTo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case doubleDamageFrom = "double_damage_from"
        case doubleDamageTo = "double_damage_to"
        case halfDamageFrom = "half_damage_from"
        case halfDamageTo = "half_damage_to"
        case noDamageFrom = "no_damage_from"
        case noDamageTo = "no_damage_to"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(doubleDamageFrom, forKey: .doubleDamageFrom)
        try container.encodeIfPresent(doubleDamageTo, forKey: .doubleDamageTo)
        try container.encodeIfPresent(halfDamageFrom, forKey: .halfDamageFrom)
        try container.encodeIfPresent(halfDamageTo, forKey: .halfDamageTo)
        try container.encodeIfPresent(noDamageFrom, forKey: .noDamageFrom)
        try container.encodeIfPresent(noDamageTo, forKey: .noDamageTo)
    }
}

