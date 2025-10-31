# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        class PublicDealSplitsCreateRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer]
          required :id, Integer

          # @!attribute splits
          #
          #   @return [Array<HubspotSDK::Models::CRM::Objects::PublicDealSplitInput>]
          required :splits,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::PublicDealSplitInput] }

          # @!method initialize(id:, splits:)
          #   @param id [Integer]
          #   @param splits [Array<HubspotSDK::Models::CRM::Objects::PublicDealSplitInput>]
        end
      end
    end
  end
end
