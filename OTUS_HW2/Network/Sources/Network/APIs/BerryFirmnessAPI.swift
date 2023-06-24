//
// BerryFirmnessAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BerryFirmnessAPI {

    /**

     - parameter limit: (query)  (optional)
     - parameter offset: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func berryFirmnessList(limit: Int? = nil, offset: Int? = nil, apiResponseQueue: DispatchQueue = NetworkAPI.apiResponseQueue, completion: @escaping ((_ data: BerryFirmnessList200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return berryFirmnessListWithRequestBuilder(limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2/berry-firmness/
     - parameter limit: (query)  (optional)
     - parameter offset: (query)  (optional)
     - returns: RequestBuilder<BerryFirmnessList200Response> 
     */
    open class func berryFirmnessListWithRequestBuilder(limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<BerryFirmnessList200Response> {
        let localVariablePath = "/api/v2/berry-firmness/"
        let localVariableURLString = NetworkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BerryFirmnessList200Response>.Type = NetworkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func berryFirmnessRead(id: Int, apiResponseQueue: DispatchQueue = NetworkAPI.apiResponseQueue, completion: @escaping ((_ data: BerryFirmness?, _ error: Error?) -> Void)) -> RequestTask {
        return berryFirmnessReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2/berry-firmness/{id}/
     - parameter id: (path)  
     - returns: RequestBuilder<BerryFirmness> 
     */
    open class func berryFirmnessReadWithRequestBuilder(id: Int) -> RequestBuilder<BerryFirmness> {
        var localVariablePath = "/api/v2/berry-firmness/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = NetworkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BerryFirmness>.Type = NetworkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
