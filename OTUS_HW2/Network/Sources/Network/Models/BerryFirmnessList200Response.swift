//
// BerryFirmnessList200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BerryFirmnessList200Response: Codable, JSONEncodable, Hashable {

    /** The total number of berry firmnesses available from this API. */
    public var count: Int?
    /** The URL for the next page of results, or null if there are no more results. */
    public var next: String?
    /** The URL for the previous page of results, or null if this is the first page. */
    public var previous: String?
    public var results: [BerryFirmness]?

    public init(count: Int? = nil, next: String? = nil, previous: String? = nil, results: [BerryFirmness]? = nil) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case next
        case previous
        case results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(next, forKey: .next)
        try container.encodeIfPresent(previous, forKey: .previous)
        try container.encodeIfPresent(results, forKey: .results)
    }
}

