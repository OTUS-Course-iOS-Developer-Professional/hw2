//
// GenerationNamesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GenerationNamesInner: Codable, JSONEncodable, Hashable {

    /** The localized name for an API resource in a specific language */
    public var name: String?
    public var language: Language?

    public init(name: String? = nil, language: Language? = nil) {
        self.name = name
        self.language = language
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case language
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(language, forKey: .language)
    }
}

