//
// EvolutionChainChain.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EvolutionChainChain: Codable, JSONEncodable, Hashable {

    /** Whether or not this is a baby Pokémon */
    public var isBaby: Bool?
    public var species: PokemonSpecies?
    /** The chain of Pokémon species that forms part of this evolution chain */
    public var evolutionDetails: [EvolutionChainChainEvolutionDetailsInner]?

    public init(isBaby: Bool? = nil, species: PokemonSpecies? = nil, evolutionDetails: [EvolutionChainChainEvolutionDetailsInner]? = nil) {
        self.isBaby = isBaby
        self.species = species
        self.evolutionDetails = evolutionDetails
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isBaby = "is_baby"
        case species
        case evolutionDetails = "evolution_details"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isBaby, forKey: .isBaby)
        try container.encodeIfPresent(species, forKey: .species)
        try container.encodeIfPresent(evolutionDetails, forKey: .evolutionDetails)
    }
}

