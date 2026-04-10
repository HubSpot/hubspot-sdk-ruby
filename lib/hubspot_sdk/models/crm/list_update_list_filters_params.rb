# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#update_list_filters
      class ListUpdateListFiltersParams < HubSpotSDK::Models::Crm::ListFilterUpdateRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String

        # @!attribute enroll_objects_in_workflows
        #
        #   @return [Boolean, nil]
        optional :enroll_objects_in_workflows, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(list_id:, enroll_objects_in_workflows: nil, request_options: {})
        #   @param list_id [String]
        #   @param enroll_objects_in_workflows [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
