//
// Berry.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Berry: Codable, JSONEncodable, Hashable {

    /** The identifier for this berry resource */
    public var id: Int
    /** The name for this berry resource */
    public var name: String
    /** Time it takes the tree to grow one stage, in hours. Berry trees go through four of these growth stages before they can be picked. */
    public var growthTime: Int
    /** The maximum number of these berries that can grow on one tree in Generation IV */
    public var maxHarvest: Int
    /** The power of the move \"Natural Gift\" when used with this Berry */
    public var naturalGiftPower: Int
    /** The size of this Berry, in millimeters */
    public var size: Int
    /** The smoothness of this Berry, used in making Pokéblocks or Poffins */
    public var smoothness: Int
    /** The speed at which this Berry dries out the soil as it grows. A higher rate means the soil dries more quickly. */
    public var soilDryness: Int
    public var firmness: BerryFirmness
    /** A list of references to each flavor a berry can have and the potency of each of those flavors in regard to this berry. */
    public var flavors: [BerryFlavorMap]

    public init(id: Int, name: String, growthTime: Int, maxHarvest: Int, naturalGiftPower: Int, size: Int, smoothness: Int, soilDryness: Int, firmness: BerryFirmness, flavors: [BerryFlavorMap]) {
        self.id = id
        self.name = name
        self.growthTime = growthTime
        self.maxHarvest = maxHarvest
        self.naturalGiftPower = naturalGiftPower
        self.size = size
        self.smoothness = smoothness
        self.soilDryness = soilDryness
        self.firmness = firmness
        self.flavors = flavors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case growthTime = "growth_time"
        case maxHarvest = "max_harvest"
        case naturalGiftPower = "natural_gift_power"
        case size
        case smoothness
        case soilDryness = "soil_dryness"
        case firmness
        case flavors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(growthTime, forKey: .growthTime)
        try container.encode(maxHarvest, forKey: .maxHarvest)
        try container.encode(naturalGiftPower, forKey: .naturalGiftPower)
        try container.encode(size, forKey: .size)
        try container.encode(smoothness, forKey: .smoothness)
        try container.encode(soilDryness, forKey: .soilDryness)
        try container.encode(firmness, forKey: .firmness)
        try container.encode(flavors, forKey: .flavors)
    }
}
