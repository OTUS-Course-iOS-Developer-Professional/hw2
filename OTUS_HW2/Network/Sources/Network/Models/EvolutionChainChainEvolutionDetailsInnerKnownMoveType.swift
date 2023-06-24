//
// EvolutionChainChainEvolutionDetailsInnerKnownMoveType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum EvolutionChainChainEvolutionDetailsInnerKnownMoveType: Codable, JSONEncodable, Hashable {
    case typeAnyCodable(AnyCodable)
    case typeModelType(ModelType)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAnyCodable(let value):
            try container.encode(value)
        case .typeModelType(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AnyCodable.self) {
            self = .typeAnyCodable(value)
        } else if let value = try? container.decode(ModelType.self) {
            self = .typeModelType(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of EvolutionChainChainEvolutionDetailsInnerKnownMoveType"))
        }
    }
}
