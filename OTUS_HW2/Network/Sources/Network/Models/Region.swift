//
// Region.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Region: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var locations: [NamedAPIResource]
    public var name: String
    public var names: [Name]
    public var mainGeneration: NamedAPIResource
    public var pokedexes: [NamedAPIResource]
    public var versionGroups: [NamedAPIResource]

    public init(id: Int, locations: [NamedAPIResource], name: String, names: [Name], mainGeneration: NamedAPIResource, pokedexes: [NamedAPIResource], versionGroups: [NamedAPIResource]) {
        self.id = id
        self.locations = locations
        self.name = name
        self.names = names
        self.mainGeneration = mainGeneration
        self.pokedexes = pokedexes
        self.versionGroups = versionGroups
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case locations
        case name
        case names
        case mainGeneration = "main_generation"
        case pokedexes
        case versionGroups = "version_groups"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(locations, forKey: .locations)
        try container.encode(name, forKey: .name)
        try container.encode(names, forKey: .names)
        try container.encode(mainGeneration, forKey: .mainGeneration)
        try container.encode(pokedexes, forKey: .pokedexes)
        try container.encode(versionGroups, forKey: .versionGroups)
    }
}
