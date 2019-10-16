// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for AutoScaling
public enum AutoScalingErrorType: AWSErrorType {
    case alreadyExistsFault(message: String?)
    case invalidNextToken(message: String?)
    case limitExceededFault(message: String?)
    case resourceContentionFault(message: String?)
    case resourceInUseFault(message: String?)
    case scalingActivityInProgressFault(message: String?)
    case serviceLinkedRoleFailure(message: String?)
}

extension AutoScalingErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsFault":
            self = .alreadyExistsFault(message: message)
        case "InvalidNextToken":
            self = .invalidNextToken(message: message)
        case "LimitExceededFault":
            self = .limitExceededFault(message: message)
        case "ResourceContentionFault":
            self = .resourceContentionFault(message: message)
        case "ResourceInUseFault":
            self = .resourceInUseFault(message: message)
        case "ScalingActivityInProgressFault":
            self = .scalingActivityInProgressFault(message: message)
        case "ServiceLinkedRoleFailure":
            self = .serviceLinkedRoleFailure(message: message)
        default:
            return nil
        }
    }
}

extension AutoScalingErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .alreadyExistsFault(let message):
            return "AlreadyExistsFault: \(message ?? "")"
        case .invalidNextToken(let message):
            return "InvalidNextToken: \(message ?? "")"
        case .limitExceededFault(let message):
            return "LimitExceededFault: \(message ?? "")"
        case .resourceContentionFault(let message):
            return "ResourceContentionFault: \(message ?? "")"
        case .resourceInUseFault(let message):
            return "ResourceInUseFault: \(message ?? "")"
        case .scalingActivityInProgressFault(let message):
            return "ScalingActivityInProgressFault: \(message ?? "")"
        case .serviceLinkedRoleFailure(let message):
            return "ServiceLinkedRoleFailure: \(message ?? "")"
        }
    }
}
