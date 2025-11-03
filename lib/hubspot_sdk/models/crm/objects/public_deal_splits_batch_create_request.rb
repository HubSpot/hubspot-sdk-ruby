# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PublicDealSplitsBatchCreateRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::Crm::Objects::PublicDealSplitsCreateRequest>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Objects::PublicDealSplitsCreateRequest] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::Crm::Objects::PublicDealSplitsCreateRequest>]
        end
      end
    end
  end
end
