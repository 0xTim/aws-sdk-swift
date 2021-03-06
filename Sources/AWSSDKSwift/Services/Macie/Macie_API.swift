// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS Macie service.

Amazon Macie Amazon Macie is a security service that uses machine learning to automatically discover, classify, and protect sensitive data in AWS. Macie recognizes sensitive data such as personally identifiable information (PII) or intellectual property, and provides you with dashboards and alerts that give visibility into how this data is being accessed or moved. For more information, see the Macie User Guide. 
*/
public struct Macie {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Macie client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "MacieService",
            service: "macie",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-12-19",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MacieErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates a specified AWS account with Amazon Macie as a member account.
    @discardableResult public func associateMemberAccount(_ input: AssociateMemberAccountRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "AssociateMemberAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates specified S3 resources with Amazon Macie for monitoring and data classification. If memberAccountId isn't specified, the action associates specified S3 resources with Macie for the current master account. If memberAccountId is specified, the action associates specified S3 resources with Macie for the specified member account. 
    public func associateS3Resources(_ input: AssociateS3ResourcesRequest) -> EventLoopFuture<AssociateS3ResourcesResult> {
        return client.send(operation: "AssociateS3Resources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified member account from Amazon Macie.
    @discardableResult public func disassociateMemberAccount(_ input: DisassociateMemberAccountRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DisassociateMemberAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes specified S3 resources from being monitored by Amazon Macie. If memberAccountId isn't specified, the action removes specified S3 resources from Macie for the current master account. If memberAccountId is specified, the action removes specified S3 resources from Macie for the specified member account.
    public func disassociateS3Resources(_ input: DisassociateS3ResourcesRequest) -> EventLoopFuture<DisassociateS3ResourcesResult> {
        return client.send(operation: "DisassociateS3Resources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all Amazon Macie member accounts for the current Amazon Macie master account.
    public func listMemberAccounts(_ input: ListMemberAccountsRequest) -> EventLoopFuture<ListMemberAccountsResult> {
        return client.send(operation: "ListMemberAccounts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the S3 resources associated with Amazon Macie. If memberAccountId isn't specified, the action lists the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie for the specified member account. 
    public func listS3Resources(_ input: ListS3ResourcesRequest) -> EventLoopFuture<ListS3ResourcesResult> {
        return client.send(operation: "ListS3Resources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the classification types for the specified S3 resources. If memberAccountId isn't specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the specified member account. 
    public func updateS3Resources(_ input: UpdateS3ResourcesRequest) -> EventLoopFuture<UpdateS3ResourcesResult> {
        return client.send(operation: "UpdateS3Resources", path: "/", httpMethod: "POST", input: input)
    }
}
