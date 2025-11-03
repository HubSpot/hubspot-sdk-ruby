# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicListConversionDate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute conversion_type
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicListConversionDate::ConversionType]
        required :conversion_type,
                 enum: -> { HubspotSDK::Crm::PublicListConversionDate::ConversionType },
                 api_name: :conversionType

        # @!attribute day
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute month
        #
        #   @return [Integer]
        required :month, Integer

        # @!attribute year
        #
        #   @return [Integer]
        required :year, Integer

        # @!method initialize(conversion_type:, day:, month:, year:)
        #   @param conversion_type [Symbol, HubspotSDK::Models::Crm::PublicListConversionDate::ConversionType]
        #   @param day [Integer]
        #   @param month [Integer]
        #   @param year [Integer]

        # @see HubspotSDK::Models::Crm::PublicListConversionDate#conversion_type
        module ConversionType
          extend HubspotSDK::Internal::Type::Enum

          CONVERSION_DATE = :CONVERSION_DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
