// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS TranscribeStreamingService service.

Operations and objects for transcribing streaming speech to text.
*/
public struct TranscribeStreamingService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the TranscribeStreamingService client
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
            service: "transcribestreaming",
            signingName: "transcribe",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [TranscribeStreamingServiceErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Starts a bidirectional HTTP2 stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. The following are encoded as HTTP2 headers:   x-amzn-transcribe-language-code   x-amzn-transcribe-media-encoding   x-amzn-transcribe-sample-rate   x-amzn-transcribe-session-id  
    @discardableResult public func startStreamTranscription() -> EventLoopFuture<Void> {
        return client.send(operation: "StartStreamTranscription", path: "/stream-transcription", httpMethod: "POST")
    }
}
