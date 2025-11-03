# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#update_filters
      class ListUpdateFiltersParams < HubspotSDK::Models::Crm::ListFilterUpdateRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute enroll_objects_in_workflows
        #   A flag indicating whether or not the memberships added to the list as a result
        #   of the filter change should be enrolled in workflows that are relevant to this
        #   list.
        #
        #   @return [Boolean, nil]
        optional :enroll_objects_in_workflows, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(enroll_objects_in_workflows: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ListUpdateFiltersParams} for more details.
        #
        #   @param enroll_objects_in_workflows [Boolean] A flag indicating whether or not the memberships added to the list as a result o
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
