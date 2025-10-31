# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Portals#batch_upsert
        class PortalBatchUpsertParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute portal_states
          #
          #   @return [Array<HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState>]
          required :portal_states,
                   -> {
                     HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState]
                   },
                   api_name: :portalStates

          # @!method initialize(app_id:, portal_states:, request_options: {})
          #   @param app_id [Integer]
          #   @param portal_states [Array<HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState>]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          class PortalState < HubspotSDK::Internal::Type::BaseModel
            # @!attribute flag_state
            #
            #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState]
            required :flag_state,
                     enum: -> {
                       HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState
                     },
                     api_name: :flagState

            # @!attribute portal_id
            #
            #   @return [Integer]
            required :portal_id, Integer, api_name: :portalId

            # @!method initialize(flag_state:, portal_id:)
            #   @param flag_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState]
            #   @param portal_id [Integer]

            # @see HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState#flag_state
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
