# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Account
      class Activity
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Account::ActivityListAuditLogsParams} for more details.
        #
        # Retrieve activity history for user actions related to approvals, content
        # updates, CRM object updates, security activity, and more (Enterprise only).
        # Learn more about
        # [activities included in audit log exports](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history-in-a-centralized-audit-log?hubs_content=knowledge.hubspot.com/account-management/view-and-export-account-activity-history&hubs_content-cta=centralized%20audit%20log#data-included-in-the-centralized-audit-log).
        #
        # @overload list_audit_logs(acting_user_id: nil, after: nil, fill_final_timestamp: nil, limit: nil, occurred_after: nil, occurred_before: nil, sort: nil, request_options: {})
        #
        # @param acting_user_id [Array<Integer>]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param fill_final_timestamp [Boolean]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param occurred_after [Time]
        #
        # @param occurred_before [Time]
        #
        # @param sort [Array<String>]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Account::PublicAPIUserActionEvent>]
        #
        # @see HubSpotSDK::Models::Account::ActivityListAuditLogsParams
        def list_audit_logs(params = {})
          parsed, options = HubSpotSDK::Account::ActivityListAuditLogsParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "account-info/2026-03/activity/audit-logs",
            query: query.transform_keys(
              acting_user_id: "actingUserId",
              fill_final_timestamp: "fillFinalTimestamp",
              occurred_after: "occurredAfter",
              occurred_before: "occurredBefore"
            ),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Account::PublicAPIUserActionEvent,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Account::ActivityListLoginActivitiesParams} for more
        # details.
        #
        # Retrieve logs of user actions related to
        # [login activity](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history#account-login-history).
        #
        # @overload list_login_activities(after: nil, limit: nil, user_id: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param user_id [Integer]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Account::PublicLoginAudit>]
        #
        # @see HubSpotSDK::Models::Account::ActivityListLoginActivitiesParams
        def list_login_activities(params = {})
          parsed, options = HubSpotSDK::Account::ActivityListLoginActivitiesParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "account-info/2026-03/activity/login",
            query: query.transform_keys(user_id: "userId"),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Account::PublicLoginAudit,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Account::ActivityListSecurityActivitiesParams} for more
        # details.
        #
        # Retrieve logs of user actions related to
        # [security activity](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history#security-activity-history).
        #
        # @overload list_security_activities(after: nil, from_timestamp: nil, limit: nil, to_timestamp: nil, user_id: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param from_timestamp [Integer]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param to_timestamp [Integer]
        #
        # @param user_id [Integer]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Account::HydratedCriticalAction>]
        #
        # @see HubSpotSDK::Models::Account::ActivityListSecurityActivitiesParams
        def list_security_activities(params = {})
          parsed, options = HubSpotSDK::Account::ActivityListSecurityActivitiesParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "account-info/2026-03/activity/security",
            query: query.transform_keys(
              from_timestamp: "fromTimestamp",
              to_timestamp: "toTimestamp",
              user_id: "userId"
            ),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Account::HydratedCriticalAction,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
