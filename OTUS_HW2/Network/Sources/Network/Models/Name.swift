//
// Name.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Name: Codable, JSONEncodable, Hashable {

    public var language: NamedAPIResource?
    public var name: String?

    public init(language: NamedAPIResource? = nil, name: String? = nil) {
        self.language = language
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case language
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(name, forKey: .name)
    }
}

