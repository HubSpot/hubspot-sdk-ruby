# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        class PublicDealSplitsBatchCreateRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::CRM::Objects::PublicDealSplitsCreateRequest>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::PublicDealSplitsCreateRequest] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::CRM::Objects::PublicDealSplitsCreateRequest>]
        end
      end
    end
  end
end
