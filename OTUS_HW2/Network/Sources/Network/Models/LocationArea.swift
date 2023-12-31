//
// LocationArea.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LocationArea: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var gameIndex: Int?
    public var encounterMethodRates: [EncounterMethodRate]?
    public var location: Location?
    public var names: [Name]?
    public var pokemonEncounters: [PokemonEncounter]?

    public init(id: Int? = nil, name: String? = nil, gameIndex: Int? = nil, encounterMethodRates: [EncounterMethodRate]? = nil, location: Location? = nil, names: [Name]? = nil, pokemonEncounters: [PokemonEncounter]? = nil) {
        self.id = id
        self.name = name
        self.gameIndex = gameIndex
        self.encounterMethodRates = encounterMethodRates
        self.location = location
        self.names = names
        self.pokemonEncounters = pokemonEncounters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case gameIndex = "game_index"
        case encounterMethodRates = "encounter_method_rates"
        case location
        case names
        case pokemonEncounters = "pokemon_encounters"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(gameIndex, forKey: .gameIndex)
        try container.encodeIfPresent(encounterMethodRates, forKey: .encounterMethodRates)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(names, forKey: .names)
        try container.encodeIfPresent(pokemonEncounters, forKey: .pokemonEncounters)
    }
}

