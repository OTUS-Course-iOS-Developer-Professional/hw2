//
// GenderPokemonSpeciesDetailsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GenderPokemonSpeciesDetailsInner: Codable, JSONEncodable, Hashable {

    /** The chance of this Pokémon being female, in eighths; or -1 for genderless */
    public var rate: Int?

    public init(rate: Int? = nil) {
        self.rate = rate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(rate, forKey: .rate)
    }
}

