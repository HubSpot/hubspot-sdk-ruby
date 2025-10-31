# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Account
      class Activity
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Account::ActivityListAuditLogsParams} for more details.
        #
        # Retrieve activity history for user actions related to approvals, content
        # updates, CRM object updates, security activity, and more (Enterprise only).
        # Learn more about
        # [activities included in audit log exports](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history-in-a-centralized-audit-log?hubs_content=knowledge.hubspot.com/account-management/view-and-export-account-activity-history&hubs_content-cta=centralized%20audit%20log#data-included-in-the-centralized-audit-log).
        #
        # @overload list_audit_logs(acting_user_id: nil, after: nil, limit: nil, occurred_after: nil, occurred_before: nil, sort: nil, request_options: {})
        #
        # @param acting_user_id [Array<Integer>] The ID of a user, for retrieving user-specific logs.
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param occurred_after [Time] A timestamp, as a starting point for retrieving activity logs.
        #
        # @param occurred_before [Time] A timestamp, as an end point for retrieving activity logs.
        #
        # @param sort [Array<String>] Set to `occurredAt` to order results by the time of the event. By default, event
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Account::CollectionResponsePublicAPIUserActionEventForwardPaging]
        #
        # @see HubspotSDK::Models::Account::ActivityListAuditLogsParams
        def list_audit_logs(params = {})
          parsed, options = HubspotSDK::Account::ActivityListAuditLogsParams.dump_request(params)
          @client.request(
            method: :get,
            path: "account-info/v3/activity/audit-logs",
            query: parsed.transform_keys(
              acting_user_id: "actingUserId",
              occurred_after: "occurredAfter",
              occurred_before: "occurredBefore"
            ),
            model: HubspotSDK::Account::CollectionResponsePublicAPIUserActionEventForwardPaging,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Account::ActivityListLoginActivitiesParams} for more
        # details.
        #
        # Retrieve logs of user actions related to
        # [login activity](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history#account-login-history).
        #
        # @overload list_login_activities(after: nil, limit: nil, user_id: nil, request_options: {})
        #
        # @param after [String] The cursor token value to get the next set of results. You can get this from the
        #
        # @param limit [Integer] The maximum number of results to display per page. Max value of limit is 200.
        #
        # @param user_id [Integer] The ID of a user, for retrieving user-specific logs.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Account::CollectionResponsePublicLoginAuditForwardPaging]
        #
        # @see HubspotSDK::Models::Account::ActivityListLoginActivitiesParams
        def list_login_activities(params = {})
          parsed, options = HubspotSDK::Account::ActivityListLoginActivitiesParams.dump_request(params)
          @client.request(
            method: :get,
            path: "account-info/v3/activity/login",
            query: parsed.transform_keys(user_id: "userId"),
            model: HubspotSDK::Account::CollectionResponsePublicLoginAuditForwardPaging,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Account::ActivityListSecurityActivitiesParams} for more
        # details.
        #
        # Retrieve logs of user actions related to
        # [security activity](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history#security-activity-history).
        #
        # @overload list_security_activities(after: nil, from_timestamp: nil, limit: nil, to_timestamp: nil, user_id: nil, request_options: {})
        #
        # @param after [String] The cursor token value to get the next set of results. You can get this from the
        #
        # @param from_timestamp [Integer] The start time, for retrieving logs within a specific timeframe.
        #
        # @param limit [Integer] The maximum number of results to display per page. Max value of limit is 200.
        #
        # @param to_timestamp [Integer] The end time, for retrieving logs within a specific timeframe.
        #
        # @param user_id [Integer] The ID of a user, for retrieving user-specific logs.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Account::CollectionResponseHydratedCriticalActionForwardPaging]
        #
        # @see HubspotSDK::Models::Account::ActivityListSecurityActivitiesParams
        def list_security_activities(params = {})
          parsed, options = HubspotSDK::Account::ActivityListSecurityActivitiesParams.dump_request(params)
          @client.request(
            method: :get,
            path: "account-info/v3/activity/security",
            query: parsed.transform_keys(
              from_timestamp: "fromTimestamp",
              to_timestamp: "toTimestamp",
              user_id: "userId"
            ),
            model: HubspotSDK::Account::CollectionResponseHydratedCriticalActionForwardPaging,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
