# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Portals#update
        class PortalUpdateResponse < HubspotSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateResponse::FlagState]
          required :flag_state,
                   enum: -> { HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateResponse::FlagState },
                   api_name: :flagState

          # @!attribute portal_id
          #
          #   @return [Integer]
          required :portal_id, Integer, api_name: :portalId

          # @!method initialize(app_id:, flag_name:, flag_state:, portal_id:)
          #   @param app_id [Integer]
          #   @param flag_name [String]
          #   @param flag_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateResponse::FlagState]
          #   @param portal_id [Integer]

          # @see HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateResponse#flag_state
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
