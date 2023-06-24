//
// NatureStatChange.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NatureStatChange: Codable, JSONEncodable, Hashable {

    public var maxChange: Int?
    public var pokeathlonStat: PokeathlonStatName?

    public init(maxChange: Int? = nil, pokeathlonStat: PokeathlonStatName? = nil) {
        self.maxChange = maxChange
        self.pokeathlonStat = pokeathlonStat
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxChange = "max_change"
        case pokeathlonStat = "pokeathlon_stat"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maxChange, forKey: .maxChange)
        try container.encodeIfPresent(pokeathlonStat, forKey: .pokeathlonStat)
    }
}

