# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class AuditLogs
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::AuditLogListParams} for more details.
        #
        # @overload list(after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_type: nil, sort: nil, user_id: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param before [String]
        #
        # @param event_type [Array<String>]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param object_id_ [Array<String>]
        #
        # @param object_type [Array<String>]
        #
        # @param sort [Array<String>]
        #
        # @param user_id [Array<String>]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::PublicAuditLog>]
        #
        # @see HubspotSDK::Models::Cms::AuditLogListParams
        def list(params = {})
          parsed, options = HubspotSDK::Cms::AuditLogListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/audit-logs/2026-03",
            query: query.transform_keys(
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

        # @overload export(email:, format_:, portal_id:, recipient_user_ids:, should_mark_export_file_as_sensitive:, type:, filters: nil, partition: nil, user_id: nil, user_time_zone: nil, request_options: {})
        #
        # @param email [String]
        # @param format_ [Symbol, HubspotSDK::Models::Cms::CmsAuditLoggingExportSettings::Format]
        # @param portal_id [Integer]
        # @param recipient_user_ids [Array<Integer>]
        # @param should_mark_export_file_as_sensitive [Boolean]
        # @param type [String]
        # @param filters [HubspotSDK::Models::Cms::CmsAuditLoggingExportFilters]
        # @param partition [Integer]
        # @param user_id [Integer]
        # @param user_time_zone [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::AuditLogExportParams
        def export(params)
          parsed, options = HubspotSDK::Cms::AuditLogExportParams.dump_request(params)
          @client.request(
            method: :post,
            path: "cms/audit-logs/2026-03/export",
            body: parsed,
            model: NilClass,
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
