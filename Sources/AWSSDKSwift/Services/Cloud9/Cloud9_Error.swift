// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Cloud9
public enum Cloud9ErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case forbiddenException(message: String?)
    case internalServerErrorException(message: String?)
    case limitExceededException(message: String?)
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension Cloud9ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}

extension Cloud9ErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .forbiddenException(let message):
            return "ForbiddenException: \(message ?? "")"
        case .internalServerErrorException(let message):
            return "InternalServerErrorException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        }
    }
}
