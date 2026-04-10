# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicListConversionDate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute conversion_type
        #   Specifies the type of conversion (CONVERSION_DATE).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicListConversionDate::ConversionType]
        required :conversion_type,
                 enum: -> { HubSpotSDK::Crm::PublicListConversionDate::ConversionType },
                 api_name: :conversionType

        # @!attribute day
        #   The day component of the conversion date.
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute month
        #   The month component of the conversion date.
        #
        #   @return [Integer]
        required :month, Integer

        # @!attribute year
        #   The year component of the conversion date.
        #
        #   @return [Integer]
        required :year, Integer

        # @!method initialize(conversion_type:, day:, month:, year:)
        #   @param conversion_type [Symbol, HubSpotSDK::Models::Crm::PublicListConversionDate::ConversionType] Specifies the type of conversion (CONVERSION_DATE).
        #
        #   @param day [Integer] The day component of the conversion date.
        #
        #   @param month [Integer] The month component of the conversion date.
        #
        #   @param year [Integer] The year component of the conversion date.

        # Specifies the type of conversion (CONVERSION_DATE).
        #
        # @see HubSpotSDK::Models::Crm::PublicListConversionDate#conversion_type
        module ConversionType
          extend HubSpotSDK::Internal::Type::Enum

          CONVERSION_DATE = :CONVERSION_DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
