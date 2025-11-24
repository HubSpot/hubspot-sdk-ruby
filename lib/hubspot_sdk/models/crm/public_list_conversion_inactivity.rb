# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicListConversionInactivity < HubspotSDK::Internal::Type::BaseModel
        # @!attribute conversion_type
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicListConversionInactivity::ConversionType]
        required :conversion_type,
                 enum: -> { HubspotSDK::Crm::PublicListConversionInactivity::ConversionType },
                 api_name: :conversionType

        # @!attribute offset
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute time_unit
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicListConversionInactivity::TimeUnit]
        required :time_unit,
                 enum: -> { HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit },
                 api_name: :timeUnit

        # @!method initialize(conversion_type:, offset:, time_unit:)
        #   @param conversion_type [Symbol, HubspotSDK::Models::Crm::PublicListConversionInactivity::ConversionType]
        #   @param offset [Integer]
        #   @param time_unit [Symbol, HubspotSDK::Models::Crm::PublicListConversionInactivity::TimeUnit]

        # @see HubspotSDK::Models::Crm::PublicListConversionInactivity#conversion_type
        module ConversionType
          extend HubspotSDK::Internal::Type::Enum

          INACTIVITY = :INACTIVITY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicListConversionInactivity#time_unit
        module TimeUnit
          extend HubspotSDK::Internal::Type::Enum

          DAY = :DAY
          MONTH = :MONTH
          WEEK = :WEEK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
