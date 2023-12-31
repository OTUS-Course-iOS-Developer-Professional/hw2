//
// PokemonSpeciesDexEntry.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An entry of a Pokemon species seen in the Pokedex. */
public struct PokemonSpeciesDexEntry: Codable, JSONEncodable, Hashable {

    /** The index number of the Pokedex entry. */
    public var entryNumber: Int?
    public var pokedex: NamedAPIResource?

    public init(entryNumber: Int? = nil, pokedex: NamedAPIResource? = nil) {
        self.entryNumber = entryNumber
        self.pokedex = pokedex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case entryNumber = "entry_number"
        case pokedex
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(entryNumber, forKey: .entryNumber)
        try container.encodeIfPresent(pokedex, forKey: .pokedex)
    }
}

