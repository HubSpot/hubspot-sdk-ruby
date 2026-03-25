# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#update_list_filters
      class ListUpdateListFiltersParams < HubspotSDK::Models::Crm::ListFilterUpdateRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String

        # @!attribute enroll_objects_in_workflows
        #
        #   @return [Boolean, nil]
        optional :enroll_objects_in_workflows, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(list_id:, enroll_objects_in_workflows: nil, request_options: {})
        #   @param list_id [String]
        #   @param enroll_objects_in_workflows [Boolean]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
