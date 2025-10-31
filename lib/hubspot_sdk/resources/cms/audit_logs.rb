# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class AuditLogs
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::AuditLogListParams} for more details.
        #
        # Returns audit logs based on filters.
        #
        # @overload list(after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_type: nil, sort: nil, user_id: nil, request_options: {})
        #
        # @param after [String] Timestamp after which audit logs will be returned
        #
        # @param before [String] Timestamp before which audit logs will be returned
        #
        # @param event_type [Array<String>] Comma separated list of event types to filter by (CREATED, UPDATED, PUBLISHED, D
        #
        # @param limit [Integer] The number of logs to return.
        #
        # @param object_id_ [Array<String>] Comma separated list of object ids to filter by.
        #
        # @param object_type [Array<String>] Comma separated list of object types to filter by (BLOG, LANDING_PAGE, DOMAIN, H
        #
        # @param sort [Array<String>] The sort direction for the audit logs. (Can only sort by timestamp).
        #
        # @param user_id [Array<String>] Comma separated list of user ids to filter by.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::PublicAuditLog>]
        #
        # @see HubspotSDK::Models::Cms::AuditLogListParams
        def list(params = {})
          parsed, options = HubspotSDK::Cms::AuditLogListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "cms/v3/audit-logs/",
            query: parsed.transform_keys(
              event_type: "eventType",
              object_id_: "objectId",
              object_type: "objectType",
              user_id: "userId"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Cms::PublicAuditLog,
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
