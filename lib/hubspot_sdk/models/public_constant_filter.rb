# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicConstantFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicConstantFilter::FilterType]
      required :filter_type, enum: -> { HubspotSDK::PublicConstantFilter::FilterType }, api_name: :filterType

      # @!attribute should_accept
      #
      #   @return [Boolean]
      required :should_accept, HubspotSDK::Internal::Type::Boolean, api_name: :shouldAccept

      # @!attribute source
      #
      #   @return [String, nil]
      optional :source, String

      # @!method initialize(filter_type:, should_accept:, source: nil)
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicConstantFilter::FilterType]
      #   @param should_accept [Boolean]
      #   @param source [String]

      # @see HubspotSDK::Models::PublicConstantFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        CONSTANT = :CONSTANT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
