//
// NatureStatAffectSets.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NatureStatAffectSets: Codable, JSONEncodable, Hashable {

    public var increase: [NatureStatAffect]
    public var decrease: [NatureStatAffect]

    public init(increase: [NatureStatAffect], decrease: [NatureStatAffect]) {
        self.increase = increase
        self.decrease = decrease
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case increase
        case decrease
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(increase, forKey: .increase)
        try container.encode(decrease, forKey: .decrease)
    }
}

