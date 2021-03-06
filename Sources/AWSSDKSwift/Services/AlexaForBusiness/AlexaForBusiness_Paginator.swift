// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension AlexaForBusiness {

    ///  Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.
    public func listBusinessReportSchedulesPaginator(_ input: ListBusinessReportSchedulesRequest, onPage: @escaping (ListBusinessReportSchedulesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBusinessReportSchedules, tokenKey: \ListBusinessReportSchedulesResponse.nextToken, onPage: onPage)
    }

    ///  Lists conference providers under a specific AWS account.
    public func listConferenceProvidersPaginator(_ input: ListConferenceProvidersRequest, onPage: @escaping (ListConferenceProvidersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConferenceProviders, tokenKey: \ListConferenceProvidersResponse.nextToken, onPage: onPage)
    }

    ///  Lists the device event history, including device connection status, for up to 30 days.
    public func listDeviceEventsPaginator(_ input: ListDeviceEventsRequest, onPage: @escaping (ListDeviceEventsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeviceEvents, tokenKey: \ListDeviceEventsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.
    public func listGatewayGroupsPaginator(_ input: ListGatewayGroupsRequest, onPage: @escaping (ListGatewayGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGatewayGroups, tokenKey: \ListGatewayGroupsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.
    public func listGatewaysPaginator(_ input: ListGatewaysRequest, onPage: @escaping (ListGatewaysResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGateways, tokenKey: \ListGatewaysResponse.nextToken, onPage: onPage)
    }

    ///  Lists all enabled skills in a specific skill group.
    public func listSkillsPaginator(_ input: ListSkillsRequest, onPage: @escaping (ListSkillsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSkills, tokenKey: \ListSkillsResponse.nextToken, onPage: onPage)
    }

    ///  Lists all categories in the Alexa skill store.
    public func listSkillsStoreCategoriesPaginator(_ input: ListSkillsStoreCategoriesRequest, onPage: @escaping (ListSkillsStoreCategoriesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSkillsStoreCategories, tokenKey: \ListSkillsStoreCategoriesResponse.nextToken, onPage: onPage)
    }

    ///  Lists all skills in the Alexa skill store by category.
    public func listSkillsStoreSkillsByCategoryPaginator(_ input: ListSkillsStoreSkillsByCategoryRequest, onPage: @escaping (ListSkillsStoreSkillsByCategoryResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSkillsStoreSkillsByCategory, tokenKey: \ListSkillsStoreSkillsByCategoryResponse.nextToken, onPage: onPage)
    }

    ///  Lists all of the smart home appliances associated with a room.
    public func listSmartHomeAppliancesPaginator(_ input: ListSmartHomeAppliancesRequest, onPage: @escaping (ListSmartHomeAppliancesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSmartHomeAppliances, tokenKey: \ListSmartHomeAppliancesResponse.nextToken, onPage: onPage)
    }

    ///  Lists all tags for the specified resource.
    public func listTagsPaginator(_ input: ListTagsRequest, onPage: @escaping (ListTagsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTags, tokenKey: \ListTagsResponse.nextToken, onPage: onPage)
    }

    ///  Searches address books and lists the ones that meet a set of filter and sort criteria.
    public func searchAddressBooksPaginator(_ input: SearchAddressBooksRequest, onPage: @escaping (SearchAddressBooksResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchAddressBooks, tokenKey: \SearchAddressBooksResponse.nextToken, onPage: onPage)
    }

    ///  Searches contacts and lists the ones that meet a set of filter and sort criteria.
    public func searchContactsPaginator(_ input: SearchContactsRequest, onPage: @escaping (SearchContactsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchContacts, tokenKey: \SearchContactsResponse.nextToken, onPage: onPage)
    }

    ///  Searches devices and lists the ones that meet a set of filter criteria.
    public func searchDevicesPaginator(_ input: SearchDevicesRequest, onPage: @escaping (SearchDevicesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchDevices, tokenKey: \SearchDevicesResponse.nextToken, onPage: onPage)
    }

    ///  Searches network profiles and lists the ones that meet a set of filter and sort criteria.
    public func searchNetworkProfilesPaginator(_ input: SearchNetworkProfilesRequest, onPage: @escaping (SearchNetworkProfilesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchNetworkProfiles, tokenKey: \SearchNetworkProfilesResponse.nextToken, onPage: onPage)
    }

    ///  Searches room profiles and lists the ones that meet a set of filter criteria.
    public func searchProfilesPaginator(_ input: SearchProfilesRequest, onPage: @escaping (SearchProfilesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchProfiles, tokenKey: \SearchProfilesResponse.nextToken, onPage: onPage)
    }

    ///  Searches rooms and lists the ones that meet a set of filter and sort criteria.
    public func searchRoomsPaginator(_ input: SearchRoomsRequest, onPage: @escaping (SearchRoomsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchRooms, tokenKey: \SearchRoomsResponse.nextToken, onPage: onPage)
    }

    ///  Searches skill groups and lists the ones that meet a set of filter and sort criteria.
    public func searchSkillGroupsPaginator(_ input: SearchSkillGroupsRequest, onPage: @escaping (SearchSkillGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchSkillGroups, tokenKey: \SearchSkillGroupsResponse.nextToken, onPage: onPage)
    }

    ///  Searches users and lists the ones that meet a set of filter and sort criteria.
    public func searchUsersPaginator(_ input: SearchUsersRequest, onPage: @escaping (SearchUsersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchUsers, tokenKey: \SearchUsersResponse.nextToken, onPage: onPage)
    }

}

extension AlexaForBusiness.ListBusinessReportSchedulesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListBusinessReportSchedulesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AlexaForBusiness.ListConferenceProvidersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListConferenceProvidersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AlexaForBusiness.ListDeviceEventsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListDeviceEventsRequest {
        return .init(
            deviceArn: self.deviceArn, 
            eventType: self.eventType, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AlexaForBusiness.ListGatewayGroupsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListGatewayGroupsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AlexaForBusiness.ListGatewaysRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListGatewaysRequest {
        return .init(
            gatewayGroupArn: self.gatewayGroupArn, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AlexaForBusiness.ListSkillsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListSkillsRequest {
        return .init(
            enablementType: self.enablementType, 
            maxResults: self.maxResults, 
            nextToken: token, 
            skillGroupArn: self.skillGroupArn, 
            skillType: self.skillType
        )

    }
}

extension AlexaForBusiness.ListSkillsStoreCategoriesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListSkillsStoreCategoriesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AlexaForBusiness.ListSkillsStoreSkillsByCategoryRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListSkillsStoreSkillsByCategoryRequest {
        return .init(
            categoryId: self.categoryId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AlexaForBusiness.ListSmartHomeAppliancesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListSmartHomeAppliancesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            roomArn: self.roomArn
        )

    }
}

extension AlexaForBusiness.ListTagsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListTagsRequest {
        return .init(
            arn: self.arn, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AlexaForBusiness.SearchAddressBooksRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchAddressBooksRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension AlexaForBusiness.SearchContactsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchContactsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension AlexaForBusiness.SearchDevicesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchDevicesRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension AlexaForBusiness.SearchNetworkProfilesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchNetworkProfilesRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension AlexaForBusiness.SearchProfilesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchProfilesRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension AlexaForBusiness.SearchRoomsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchRoomsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension AlexaForBusiness.SearchSkillGroupsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchSkillGroupsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension AlexaForBusiness.SearchUsersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchUsersRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}


