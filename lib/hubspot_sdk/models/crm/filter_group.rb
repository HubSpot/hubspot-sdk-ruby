# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class FilterGroup < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Array<HubspotSDK::Models::Crm::Filter>]
        required :filters, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Filter] }

        # @!method initialize(filters:)
        #   @param filters [Array<HubspotSDK::Models::Crm::Filter>]
      end
    end
  end
end
