//
// VersionGroupAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class VersionGroupAPI {

    /**

     - parameter limit: (query)  (optional)
     - parameter offset: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func versionGroupList(limit: Int? = nil, offset: Int? = nil, apiResponseQueue: DispatchQueue = NetworkAPI.apiResponseQueue, completion: @escaping ((_ data: VersionGroupList200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return versionGroupListWithRequestBuilder(limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2/version-group/
     - parameter limit: (query)  (optional)
     - parameter offset: (query)  (optional)
     - returns: RequestBuilder<VersionGroupList200Response> 
     */
    open class func versionGroupListWithRequestBuilder(limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<VersionGroupList200Response> {
        let localVariablePath = "/api/v2/version-group/"
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

        let localVariableRequestBuilder: RequestBuilder<VersionGroupList200Response>.Type = NetworkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func versionGroupRead(id: Int, apiResponseQueue: DispatchQueue = NetworkAPI.apiResponseQueue, completion: @escaping ((_ data: VersionGroup?, _ error: Error?) -> Void)) -> RequestTask {
        return versionGroupReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2/version-group/{id}/
     - parameter id: (path)  
     - returns: RequestBuilder<VersionGroup> 
     */
    open class func versionGroupReadWithRequestBuilder(id: Int) -> RequestBuilder<VersionGroup> {
        var localVariablePath = "/api/v2/version-group/{id}/"
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

        let localVariableRequestBuilder: RequestBuilder<VersionGroup>.Type = NetworkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
