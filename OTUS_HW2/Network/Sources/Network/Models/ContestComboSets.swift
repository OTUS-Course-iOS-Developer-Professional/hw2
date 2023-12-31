//
// ContestComboSets.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ContestComboSets: Codable, JSONEncodable, Hashable {

    public var normal: ContestComboDetail?
    public var _super: ContestComboDetail?

    public init(normal: ContestComboDetail? = nil, _super: ContestComboDetail? = nil) {
        self.normal = normal
        self._super = _super
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case normal
        case _super = "super"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(normal, forKey: .normal)
        try container.encodeIfPresent(_super, forKey: ._super)
    }
}

