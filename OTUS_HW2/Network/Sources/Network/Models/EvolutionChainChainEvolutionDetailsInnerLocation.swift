//
// EvolutionChainChainEvolutionDetailsInnerLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum EvolutionChainChainEvolutionDetailsInnerLocation: Codable, JSONEncodable, Hashable {
    case typeAnyCodable(AnyCodable)
    case typeLocation(Location)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAnyCodable(let value):
            try container.encode(value)
        case .typeLocation(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AnyCodable.self) {
            self = .typeAnyCodable(value)
        } else if let value = try? container.decode(Location.self) {
            self = .typeLocation(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of EvolutionChainChainEvolutionDetailsInnerLocation"))
        }
    }
}
