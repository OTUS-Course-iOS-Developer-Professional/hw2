//
// VersionGroup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VersionGroup: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var name: String
    public var order: Int
    public var generation: NamedAPIResource
    public var moveLearnMethods: [NamedAPIResource]
    public var pokedexes: [NamedAPIResource]
    public var regions: [NamedAPIResource]
    public var versions: [NamedAPIResource]

    public init(id: Int, name: String, order: Int, generation: NamedAPIResource, moveLearnMethods: [NamedAPIResource], pokedexes: [NamedAPIResource], regions: [NamedAPIResource], versions: [NamedAPIResource]) {
        self.id = id
        self.name = name
        self.order = order
        self.generation = generation
        self.moveLearnMethods = moveLearnMethods
        self.pokedexes = pokedexes
        self.regions = regions
        self.versions = versions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case order
        case generation
        case moveLearnMethods = "move_learn_methods"
        case pokedexes
        case regions
        case versions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(order, forKey: .order)
        try container.encode(generation, forKey: .generation)
        try container.encode(moveLearnMethods, forKey: .moveLearnMethods)
        try container.encode(pokedexes, forKey: .pokedexes)
        try container.encode(regions, forKey: .regions)
        try container.encode(versions, forKey: .versions)
    }
}

