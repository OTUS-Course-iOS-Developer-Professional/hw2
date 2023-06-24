//
// VersionList200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VersionList200Response: Codable, JSONEncodable, Hashable {

    /** The total number of versions. */
    public var count: Int?
    /** URL to retrieve the next page of versions. */
    public var next: String?
    /** URL to retrieve the previous page of versions. */
    public var previous: String?
    public var results: [Version]?

    public init(count: Int? = nil, next: String? = nil, previous: String? = nil, results: [Version]? = nil) {
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
