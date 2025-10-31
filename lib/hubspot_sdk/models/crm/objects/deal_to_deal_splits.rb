# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        class DealToDealSplits < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute splits
          #
          #   @return [Array<HubspotSDK::Models::CRM::SimplePublicObject>]
          required :splits, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObject] }

          # @!method initialize(id:, splits:)
          #   @param id [String]
          #   @param splits [Array<HubspotSDK::Models::CRM::SimplePublicObject>]
        end
      end
    end
  end
end
