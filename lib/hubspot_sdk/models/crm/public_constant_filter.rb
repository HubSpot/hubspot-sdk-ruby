# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicConstantFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Specifies the type of filter, which is (CONSTANT).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicConstantFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicConstantFilter::FilterType },
                 api_name: :filterType

        # @!attribute should_accept
        #   Indicates whether the filter should accept the condition.
        #
        #   @return [Boolean]
        required :should_accept, HubSpotSDK::Internal::Type::Boolean, api_name: :shouldAccept

        # @!attribute source
        #   Defines the source of the constant filter.
        #
        #   @return [String, nil]
        optional :source, String

        # @!method initialize(filter_type:, should_accept:, source: nil)
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicConstantFilter::FilterType] Specifies the type of filter, which is (CONSTANT).
        #
        #   @param should_accept [Boolean] Indicates whether the filter should accept the condition.
        #
        #   @param source [String] Defines the source of the constant filter.

        # Specifies the type of filter, which is (CONSTANT).
        #
        # @see HubSpotSDK::Models::Crm::PublicConstantFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          CONSTANT = :CONSTANT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
