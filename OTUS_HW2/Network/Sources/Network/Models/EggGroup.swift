//
// EggGroup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EggGroup: Codable, JSONEncodable, Hashable {

    /** The identifier for this egg group resource */
    public var id: Int
    /** The name for this egg group resource */
    public var name: String
    /** The name of this egg group listed in different languages */
    public var names: [Name]
    /** A list of all Pokemon species that are members of this egg group */
    public var pokemonSpecies: [NamedAPIResource]

    public init(id: Int, name: String, names: [Name], pokemonSpecies: [NamedAPIResource]) {
        self.id = id
        self.name = name
        self.names = names
        self.pokemonSpecies = pokemonSpecies
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case names
        case pokemonSpecies = "pokemon_species"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(names, forKey: .names)
        try container.encode(pokemonSpecies, forKey: .pokemonSpecies)
    }
}

