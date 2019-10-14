// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Budgets
public enum BudgetsErrorType: AWSErrorType {
    case creationLimitExceededException(message: String?)
    case duplicateRecordException(message: String?)
    case expiredNextTokenException(message: String?)
    case internalErrorException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterException(message: String?)
    case notFoundException(message: String?)
}

extension BudgetsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CreationLimitExceededException":
            self = .creationLimitExceededException(message: message)
        case "DuplicateRecordException":
            self = .duplicateRecordException(message: message)
        case "ExpiredNextTokenException":
            self = .expiredNextTokenException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        default:
            return nil
        }
    }
}

extension BudgetsErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .creationLimitExceededException(let message):
            return "CreationLimitExceededException: \(message ?? "")"
        case .duplicateRecordException(let message):
            return "DuplicateRecordException: \(message ?? "")"
        case .expiredNextTokenException(let message):
            return "ExpiredNextTokenException: \(message ?? "")"
        case .internalErrorException(let message):
            return "InternalErrorException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        }
    }
}