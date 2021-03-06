// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for STS
public enum STSErrorType: AWSErrorType {
    case expiredTokenException(message: String?)
    case iDPCommunicationErrorException(message: String?)
    case iDPRejectedClaimException(message: String?)
    case invalidAuthorizationMessageException(message: String?)
    case invalidIdentityTokenException(message: String?)
    case malformedPolicyDocumentException(message: String?)
    case packedPolicyTooLargeException(message: String?)
    case regionDisabledException(message: String?)
}

extension STSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ExpiredTokenException":
            self = .expiredTokenException(message: message)
        case "IDPCommunicationError":
            self = .iDPCommunicationErrorException(message: message)
        case "IDPRejectedClaim":
            self = .iDPRejectedClaimException(message: message)
        case "InvalidAuthorizationMessageException":
            self = .invalidAuthorizationMessageException(message: message)
        case "InvalidIdentityToken":
            self = .invalidIdentityTokenException(message: message)
        case "MalformedPolicyDocument":
            self = .malformedPolicyDocumentException(message: message)
        case "PackedPolicyTooLarge":
            self = .packedPolicyTooLargeException(message: message)
        case "RegionDisabledException":
            self = .regionDisabledException(message: message)
        default:
            return nil
        }
    }
}

extension STSErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .expiredTokenException(let message):
            return "ExpiredTokenException: \(message ?? "")"
        case .iDPCommunicationErrorException(let message):
            return "IDPCommunicationError: \(message ?? "")"
        case .iDPRejectedClaimException(let message):
            return "IDPRejectedClaim: \(message ?? "")"
        case .invalidAuthorizationMessageException(let message):
            return "InvalidAuthorizationMessageException: \(message ?? "")"
        case .invalidIdentityTokenException(let message):
            return "InvalidIdentityToken: \(message ?? "")"
        case .malformedPolicyDocumentException(let message):
            return "MalformedPolicyDocument: \(message ?? "")"
        case .packedPolicyTooLargeException(let message):
            return "PackedPolicyTooLarge: \(message ?? "")"
        case .regionDisabledException(let message):
            return "RegionDisabledException: \(message ?? "")"
        }
    }
}
