# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class FilterGroup < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Array<HubspotSDK::Models::CRM::Filter>]
        required :filters, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Filter] }

        # @!method initialize(filters:)
        #   @param filters [Array<HubspotSDK::Models::CRM::Filter>]
      end
    end
  end
end
