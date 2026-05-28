# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module PublicListConversionTime
        extend HubSpotSDK::Internal::Type::Union

        discriminator :conversionType

        variant :CONVERSION_DATE, -> { HubSpotSDK::Crm::PublicListConversionDate }

        variant :INACTIVITY, -> { HubSpotSDK::Crm::PublicListConversionInactivity }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Crm::PublicListConversionDate, HubSpotSDK::Models::Crm::PublicListConversionInactivity)]
      end
    end
  end
end
