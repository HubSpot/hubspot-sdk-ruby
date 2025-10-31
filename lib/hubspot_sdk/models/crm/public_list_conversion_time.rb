# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module PublicListConversionTime
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::CRM::PublicListConversionDate }

        variant -> { HubspotSDK::CRM::PublicListConversionInactivity }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::CRM::PublicListConversionDate, HubspotSDK::Models::CRM::PublicListConversionInactivity)]
      end
    end
  end
end
