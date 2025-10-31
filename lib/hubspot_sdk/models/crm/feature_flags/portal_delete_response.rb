# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Portals#delete
        class PortalDeleteResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer, api_name: :appId

          # @!attribute flag_name
          #
          #   @return [String]
          required :flag_name, String, api_name: :flagName

          # @!attribute flag_state
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState]
          required :flag_state,
                   enum: -> { HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState },
                   api_name: :flagState

          # @!attribute portal_id
          #
          #   @return [Integer]
          required :portal_id, Integer, api_name: :portalId

          # @!method initialize(app_id:, flag_name:, flag_state:, portal_id:)
          #   @param app_id [Integer]
          #   @param flag_name [String]
          #   @param flag_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState]
          #   @param portal_id [Integer]

          # @see HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse#flag_state
          module FlagState
            extend HubspotSDK::Internal::Type::Enum

            OFF = :OFF
            ON = :ON
            ABSENT = :ABSENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
