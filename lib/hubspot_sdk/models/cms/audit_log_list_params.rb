# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::AuditLogs#list
      class AuditLogListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute event_type
        #
        #   @return [Array<String>, nil]
        optional :event_type, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute object_id_
        #
        #   @return [Array<String>, nil]
        optional :object_id_, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute object_type
        #
        #   @return [Array<String>, nil]
        optional :object_type, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute user_id
        #
        #   @return [Array<String>, nil]
        optional :user_id, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_type: nil, sort: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::AuditLogListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param before [String]
        #
        #   @param event_type [Array<String>]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param object_id_ [Array<String>]
        #
        #   @param object_type [Array<String>]
        #
        #   @param sort [Array<String>]
        #
        #   @param user_id [Array<String>]
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
