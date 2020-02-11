// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS MediaLive service.

API for AWS Elemental MediaLive
*/
public struct MediaLive {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MediaLive client
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
            service: "medialive",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaLiveErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Update a channel schedule
    public func batchUpdateSchedule(_ input: BatchUpdateScheduleRequest) -> EventLoopFuture<BatchUpdateScheduleResponse> {
        return client.send(operation: "BatchUpdateSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "PUT", input: input)
    }

    ///  Creates a new channel
    public func createChannel(_ input: CreateChannelRequest) -> EventLoopFuture<CreateChannelResponse> {
        return client.send(operation: "CreateChannel", path: "/prod/channels", httpMethod: "POST", input: input)
    }

    ///  Create an input
    public func createInput(_ input: CreateInputRequest) -> EventLoopFuture<CreateInputResponse> {
        return client.send(operation: "CreateInput", path: "/prod/inputs", httpMethod: "POST", input: input)
    }

    ///  Creates a Input Security Group
    public func createInputSecurityGroup(_ input: CreateInputSecurityGroupRequest) -> EventLoopFuture<CreateInputSecurityGroupResponse> {
        return client.send(operation: "CreateInputSecurityGroup", path: "/prod/inputSecurityGroups", httpMethod: "POST", input: input)
    }

    ///  Create a new multiplex.
    public func createMultiplex(_ input: CreateMultiplexRequest) -> EventLoopFuture<CreateMultiplexResponse> {
        return client.send(operation: "CreateMultiplex", path: "/prod/multiplexes", httpMethod: "POST", input: input)
    }

    ///  Create a new program in the multiplex.
    public func createMultiplexProgram(_ input: CreateMultiplexProgramRequest) -> EventLoopFuture<CreateMultiplexProgramResponse> {
        return client.send(operation: "CreateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: "POST", input: input)
    }

    ///  Create tags for a resource
    @discardableResult public func createTags(_ input: CreateTagsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "CreateTags", path: "/prod/tags/{resource-arn}", httpMethod: "POST", input: input)
    }

    ///  Starts deletion of channel. The associated outputs are also deleted.
    public func deleteChannel(_ input: DeleteChannelRequest) -> EventLoopFuture<DeleteChannelResponse> {
        return client.send(operation: "DeleteChannel", path: "/prod/channels/{channelId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the input end point
    public func deleteInput(_ input: DeleteInputRequest) -> EventLoopFuture<DeleteInputResponse> {
        return client.send(operation: "DeleteInput", path: "/prod/inputs/{inputId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an Input Security Group
    public func deleteInputSecurityGroup(_ input: DeleteInputSecurityGroupRequest) -> EventLoopFuture<DeleteInputSecurityGroupResponse> {
        return client.send(operation: "DeleteInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "DELETE", input: input)
    }

    ///  Delete a multiplex. The multiplex must be idle.
    public func deleteMultiplex(_ input: DeleteMultiplexRequest) -> EventLoopFuture<DeleteMultiplexResponse> {
        return client.send(operation: "DeleteMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "DELETE", input: input)
    }

    ///  Delete a program from a multiplex.
    public func deleteMultiplexProgram(_ input: DeleteMultiplexProgramRequest) -> EventLoopFuture<DeleteMultiplexProgramResponse> {
        return client.send(operation: "DeleteMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "DELETE", input: input)
    }

    ///  Delete an expired reservation.
    public func deleteReservation(_ input: DeleteReservationRequest) -> EventLoopFuture<DeleteReservationResponse> {
        return client.send(operation: "DeleteReservation", path: "/prod/reservations/{reservationId}", httpMethod: "DELETE", input: input)
    }

    ///  Delete all schedule actions on a channel.
    public func deleteSchedule(_ input: DeleteScheduleRequest) -> EventLoopFuture<DeleteScheduleResponse> {
        return client.send(operation: "DeleteSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "DELETE", input: input)
    }

    ///  Removes tags for a resource
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteTags", path: "/prod/tags/{resource-arn}", httpMethod: "DELETE", input: input)
    }

    ///  Gets details about a channel
    public func describeChannel(_ input: DescribeChannelRequest) -> EventLoopFuture<DescribeChannelResponse> {
        return client.send(operation: "DescribeChannel", path: "/prod/channels/{channelId}", httpMethod: "GET", input: input)
    }

    ///  Produces details about an input
    public func describeInput(_ input: DescribeInputRequest) -> EventLoopFuture<DescribeInputResponse> {
        return client.send(operation: "DescribeInput", path: "/prod/inputs/{inputId}", httpMethod: "GET", input: input)
    }

    ///  Produces a summary of an Input Security Group
    public func describeInputSecurityGroup(_ input: DescribeInputSecurityGroupRequest) -> EventLoopFuture<DescribeInputSecurityGroupResponse> {
        return client.send(operation: "DescribeInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "GET", input: input)
    }

    ///  Gets details about a multiplex.
    public func describeMultiplex(_ input: DescribeMultiplexRequest) -> EventLoopFuture<DescribeMultiplexResponse> {
        return client.send(operation: "DescribeMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "GET", input: input)
    }

    ///  Get the details for a program in a multiplex.
    public func describeMultiplexProgram(_ input: DescribeMultiplexProgramRequest) -> EventLoopFuture<DescribeMultiplexProgramResponse> {
        return client.send(operation: "DescribeMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "GET", input: input)
    }

    ///  Get details for an offering.
    public func describeOffering(_ input: DescribeOfferingRequest) -> EventLoopFuture<DescribeOfferingResponse> {
        return client.send(operation: "DescribeOffering", path: "/prod/offerings/{offeringId}", httpMethod: "GET", input: input)
    }

    ///  Get details for a reservation.
    public func describeReservation(_ input: DescribeReservationRequest) -> EventLoopFuture<DescribeReservationResponse> {
        return client.send(operation: "DescribeReservation", path: "/prod/reservations/{reservationId}", httpMethod: "GET", input: input)
    }

    ///  Get a channel schedule
    public func describeSchedule(_ input: DescribeScheduleRequest) -> EventLoopFuture<DescribeScheduleResponse> {
        return client.send(operation: "DescribeSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "GET", input: input)
    }

    ///  Produces list of channels that have been created
    public func listChannels(_ input: ListChannelsRequest) -> EventLoopFuture<ListChannelsResponse> {
        return client.send(operation: "ListChannels", path: "/prod/channels", httpMethod: "GET", input: input)
    }

    ///  Produces a list of Input Security Groups for an account
    public func listInputSecurityGroups(_ input: ListInputSecurityGroupsRequest) -> EventLoopFuture<ListInputSecurityGroupsResponse> {
        return client.send(operation: "ListInputSecurityGroups", path: "/prod/inputSecurityGroups", httpMethod: "GET", input: input)
    }

    ///  Produces list of inputs that have been created
    public func listInputs(_ input: ListInputsRequest) -> EventLoopFuture<ListInputsResponse> {
        return client.send(operation: "ListInputs", path: "/prod/inputs", httpMethod: "GET", input: input)
    }

    ///  List the programs that currently exist for a specific multiplex.
    public func listMultiplexPrograms(_ input: ListMultiplexProgramsRequest) -> EventLoopFuture<ListMultiplexProgramsResponse> {
        return client.send(operation: "ListMultiplexPrograms", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: "GET", input: input)
    }

    ///  Retrieve a list of the existing multiplexes.
    public func listMultiplexes(_ input: ListMultiplexesRequest) -> EventLoopFuture<ListMultiplexesResponse> {
        return client.send(operation: "ListMultiplexes", path: "/prod/multiplexes", httpMethod: "GET", input: input)
    }

    ///  List offerings available for purchase.
    public func listOfferings(_ input: ListOfferingsRequest) -> EventLoopFuture<ListOfferingsResponse> {
        return client.send(operation: "ListOfferings", path: "/prod/offerings", httpMethod: "GET", input: input)
    }

    ///  List purchased reservations.
    public func listReservations(_ input: ListReservationsRequest) -> EventLoopFuture<ListReservationsResponse> {
        return client.send(operation: "ListReservations", path: "/prod/reservations", httpMethod: "GET", input: input)
    }

    ///  Produces list of tags that have been created for a resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/prod/tags/{resource-arn}", httpMethod: "GET", input: input)
    }

    ///  Purchase an offering and create a reservation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest) -> EventLoopFuture<PurchaseOfferingResponse> {
        return client.send(operation: "PurchaseOffering", path: "/prod/offerings/{offeringId}/purchase", httpMethod: "POST", input: input)
    }

    ///  Starts an existing channel
    public func startChannel(_ input: StartChannelRequest) -> EventLoopFuture<StartChannelResponse> {
        return client.send(operation: "StartChannel", path: "/prod/channels/{channelId}/start", httpMethod: "POST", input: input)
    }

    ///  Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
    public func startMultiplex(_ input: StartMultiplexRequest) -> EventLoopFuture<StartMultiplexResponse> {
        return client.send(operation: "StartMultiplex", path: "/prod/multiplexes/{multiplexId}/start", httpMethod: "POST", input: input)
    }

    ///  Stops a running channel
    public func stopChannel(_ input: StopChannelRequest) -> EventLoopFuture<StopChannelResponse> {
        return client.send(operation: "StopChannel", path: "/prod/channels/{channelId}/stop", httpMethod: "POST", input: input)
    }

    ///  Stops a running multiplex. If the multiplex isn't running, this action has no effect.
    public func stopMultiplex(_ input: StopMultiplexRequest) -> EventLoopFuture<StopMultiplexResponse> {
        return client.send(operation: "StopMultiplex", path: "/prod/multiplexes/{multiplexId}/stop", httpMethod: "POST", input: input)
    }

    ///  Updates a channel.
    public func updateChannel(_ input: UpdateChannelRequest) -> EventLoopFuture<UpdateChannelResponse> {
        return client.send(operation: "UpdateChannel", path: "/prod/channels/{channelId}", httpMethod: "PUT", input: input)
    }

    ///  Changes the class of the channel.
    public func updateChannelClass(_ input: UpdateChannelClassRequest) -> EventLoopFuture<UpdateChannelClassResponse> {
        return client.send(operation: "UpdateChannelClass", path: "/prod/channels/{channelId}/channelClass", httpMethod: "PUT", input: input)
    }

    ///  Updates an input.
    public func updateInput(_ input: UpdateInputRequest) -> EventLoopFuture<UpdateInputResponse> {
        return client.send(operation: "UpdateInput", path: "/prod/inputs/{inputId}", httpMethod: "PUT", input: input)
    }

    ///  Update an Input Security Group's Whilelists.
    public func updateInputSecurityGroup(_ input: UpdateInputSecurityGroupRequest) -> EventLoopFuture<UpdateInputSecurityGroupResponse> {
        return client.send(operation: "UpdateInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "PUT", input: input)
    }

    ///  Updates a multiplex.
    public func updateMultiplex(_ input: UpdateMultiplexRequest) -> EventLoopFuture<UpdateMultiplexResponse> {
        return client.send(operation: "UpdateMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "PUT", input: input)
    }

    ///  Update a program in a multiplex.
    public func updateMultiplexProgram(_ input: UpdateMultiplexProgramRequest) -> EventLoopFuture<UpdateMultiplexProgramResponse> {
        return client.send(operation: "UpdateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "PUT", input: input)
    }

    ///  Update reservation.
    public func updateReservation(_ input: UpdateReservationRequest) -> EventLoopFuture<UpdateReservationResponse> {
        return client.send(operation: "UpdateReservation", path: "/prod/reservations/{reservationId}", httpMethod: "PUT", input: input)
    }
}
