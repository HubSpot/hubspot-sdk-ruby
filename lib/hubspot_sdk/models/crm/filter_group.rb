# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class FilterGroup < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Array<HubSpotSDK::Models::Crm::Filter>]
        required :filters, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Filter] }

        # @!method initialize(filters:)
        #   @param filters [Array<HubSpotSDK::Models::Crm::Filter>]
      end
    end
  end
end
