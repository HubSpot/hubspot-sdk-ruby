# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::AuditLogs#list
      class AuditLogListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   Timestamp after which audit logs will be returned
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   Timestamp before which audit logs will be returned
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute event_type
        #   Comma separated list of event types to filter by (CREATED, UPDATED, PUBLISHED,
        #   DELETED, UNPUBLISHED).
        #
        #   @return [Array<String>, nil]
        optional :event_type, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute limit
        #   The number of logs to return.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute object_id_
        #   Comma separated list of object ids to filter by.
        #
        #   @return [Array<String>, nil]
        optional :object_id_, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute object_type
        #   Comma separated list of object types to filter by (BLOG, LANDING_PAGE, DOMAIN,
        #   HUBDB_TABLE etc.)
        #
        #   @return [Array<String>, nil]
        optional :object_type, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #   The sort direction for the audit logs. (Can only sort by timestamp).
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute user_id
        #   Comma separated list of user ids to filter by.
        #
        #   @return [Array<String>, nil]
        optional :user_id, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_type: nil, sort: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::AuditLogListParams} for more details.
        #
        #   @param after [String] Timestamp after which audit logs will be returned
        #
        #   @param before [String] Timestamp before which audit logs will be returned
        #
        #   @param event_type [Array<String>] Comma separated list of event types to filter by (CREATED, UPDATED, PUBLISHED, D
        #
        #   @param limit [Integer] The number of logs to return.
        #
        #   @param object_id_ [Array<String>] Comma separated list of object ids to filter by.
        #
        #   @param object_type [Array<String>] Comma separated list of object types to filter by (BLOG, LANDING_PAGE, DOMAIN, H
        #
        #   @param sort [Array<String>] The sort direction for the audit logs. (Can only sort by timestamp).
        #
        #   @param user_id [Array<String>] Comma separated list of user ids to filter by.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
