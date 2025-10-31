# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::Groups#list
        class GroupListResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::CRM::PropertyGroup>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PropertyGroup] }

          # @!method initialize(results:)
          #   @param results [Array<HubspotSDK::Models::CRM::PropertyGroup>]
        end
      end
    end
  end
end
