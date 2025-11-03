# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module PublicListConversionTime
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Crm::PublicListConversionDate }

        variant -> { HubspotSDK::Crm::PublicListConversionInactivity }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Crm::PublicListConversionDate, HubspotSDK::Models::Crm::PublicListConversionInactivity)]
      end
    end
  end
end
