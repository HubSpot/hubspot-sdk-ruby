# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Apps#list_portals
        class AppListPortalsResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute portal_flag_states
          #
          #   @return [Array<HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState>]
          required :portal_flag_states,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState] },
                   api_name: :portalFlagStates

          # @!method initialize(portal_flag_states:)
          #   @param portal_flag_states [Array<HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState>]

          class PortalFlagState < HubspotSDK::Internal::Type::BaseModel
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
            #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState]
            required :flag_state,
                     enum: -> { HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState },
                     api_name: :flagState

            # @!attribute portal_id
            #
            #   @return [Integer]
            required :portal_id, Integer, api_name: :portalId

            # @!method initialize(app_id:, flag_name:, flag_state:, portal_id:)
            #   @param app_id [Integer]
            #   @param flag_name [String]
            #   @param flag_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState]
            #   @param portal_id [Integer]

            # @see HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState#flag_state
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
end
