# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class DealToDealSplits < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the deal associated with the deal splits.
        #
        #   @return [String]
        required :id, String

        # @!attribute splits
        #   An array of deal split objects, each representing a portion of the deal assigned
        #   to an owner.
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObject>]
        required :splits, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject] }

        # @!method initialize(id:, splits:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::DealToDealSplits} for more details.
        #
        #   @param id [String] The unique identifier for the deal associated with the deal splits.
        #
        #   @param splits [Array<HubspotSDK::Models::Crm::SimplePublicObject>] An array of deal split objects, each representing a portion of the deal assigned
      end
    end
  end
end
