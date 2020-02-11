// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS EC2InstanceConnect service.

AWS EC2 Connect Service is a service that enables system administrators to publish temporary SSH keys to their EC2 instances in order to establish connections to their instances without leaving a permanent authentication option.
*/
public struct EC2InstanceConnect {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the EC2InstanceConnect client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `useAWSClientShared` if the client shall manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .useAWSClientShared
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSEC2InstanceConnectService",
            service: "ec2-instance-connect",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-04-02",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [EC2InstanceConnectErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Pushes an SSH public key to a particular OS user on a given EC2 instance for 60 seconds.
    public func sendSSHPublicKey(_ input: SendSSHPublicKeyRequest) -> EventLoopFuture<SendSSHPublicKeyResponse> {
        return client.send(operation: "SendSSHPublicKey", path: "/", httpMethod: "POST", input: input)
    }
}
