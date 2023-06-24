//
// Characteristic.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Characteristic: Codable, JSONEncodable, Hashable {

    /** The identifier for this characteristic resource */
    public var id: Int
    /** The remainder of the highest stat/IV divided by 5 */
    public var geneModulo: Int
    /** The possible values of the highest stat that would result in a Pokémon recieving this characteristic when divided by 5 */
    public var possibleValues: [Int]

    public init(id: Int, geneModulo: Int, possibleValues: [Int]) {
        self.id = id
        self.geneModulo = geneModulo
        self.possibleValues = possibleValues
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case geneModulo = "gene_modulo"
        case possibleValues = "possible_values"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(geneModulo, forKey: .geneModulo)
        try container.encode(possibleValues, forKey: .possibleValues)
    }
}
