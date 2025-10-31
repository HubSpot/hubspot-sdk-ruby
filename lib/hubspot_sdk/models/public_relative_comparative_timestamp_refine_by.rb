# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicRelativeComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
      # @!attribute comparison
      #
      #   @return [String]
      required :comparison, String

      # @!attribute time_offset
      #
      #   @return [HubspotSDK::Models::PublicTimeOffset]
      required :time_offset, -> { HubspotSDK::PublicTimeOffset }, api_name: :timeOffset

      # @!attribute type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy::Type]
      required :type, enum: -> { HubspotSDK::PublicRelativeComparativeTimestampRefineBy::Type }

      # @!method initialize(comparison:, time_offset:, type:)
      #   @param comparison [String]
      #   @param time_offset [HubspotSDK::Models::PublicTimeOffset]
      #   @param type [Symbol, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy::Type]

      # @see HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy#type
      module Type
        extend HubspotSDK::Internal::Type::Enum

        RELATIVE_COMPARATIVE = :RELATIVE_COMPARATIVE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
