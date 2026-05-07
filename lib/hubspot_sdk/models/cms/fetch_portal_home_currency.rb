# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class FetchPortalHomeCurrency < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::FetchPortalHomeCurrency::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::FetchPortalHomeCurrency::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::FetchPortalHomeCurrency::Operator]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubSpotSDK::Models::Cms::FetchPortalHomeCurrency#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          FETCH_PORTAL_HOME_CURRENCY = :FETCH_PORTAL_HOME_CURRENCY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
