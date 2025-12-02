# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class FetchSingleCurrencyPortalCurrency < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency::Operator }

        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::Expression>, nil]
        optional :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Cms::Expression] }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency::Operator]
        #   @param inputs [Array<HubspotSDK::Models::Cms::Expression>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY = :FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
