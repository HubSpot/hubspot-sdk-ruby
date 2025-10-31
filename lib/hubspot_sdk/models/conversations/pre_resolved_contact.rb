# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PreResolvedContact < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_properties_leading_to_match
        #
        #   @return [Array<String>]
        required :contact_properties_leading_to_match,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :contactPropertiesLeadingToMatch

        # @!attribute contact_vid
        #
        #   @return [Integer]
        required :contact_vid, Integer, api_name: :contactVid

        # @!method initialize(contact_properties_leading_to_match:, contact_vid:)
        #   @param contact_properties_leading_to_match [Array<String>]
        #   @param contact_vid [Integer]
      end
    end
  end
end
