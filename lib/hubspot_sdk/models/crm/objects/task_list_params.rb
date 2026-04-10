# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::Tasks#list
        class TaskListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubSpotSDK::Internal::Type::Boolean

          # @!attribute associations
          #   A comma separated list of object types to retrieve associated IDs for. If any of
          #   the specified associations do not exist, they will be ignored.
          #
          #   @return [Array<String>, nil]
          optional :associations, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute properties
          #   A comma separated list of the properties to be returned in the response. If any
          #   of the specified properties are not present on the requested object(s), they
          #   will be ignored.
          #
          #   @return [Array<String>, nil]
          optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!attribute properties_with_history
          #   A comma separated list of the properties to be returned along with their history
          #   of previous values. If any of the specified properties are not present on the
          #   requested object(s), they will be ignored. Usage of this parameter will reduce
          #   the maximum number of objects that can be read by a single request.
          #
          #   @return [Array<String>, nil]
          optional :properties_with_history, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(after: nil, archived: nil, associations: nil, limit: nil, properties: nil, properties_with_history: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Objects::TaskListParams} for more details.
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          #   @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
