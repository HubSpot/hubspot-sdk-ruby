# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Portals#update
        class PortalUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute flag_name
          #
          #   @return [String]
          required :flag_name, String

          # @!attribute flag_state
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateParams::FlagState]
          required :flag_state,
                   enum: -> { HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState },
                   api_name: :flagState

          # @!method initialize(app_id:, flag_name:, flag_state:, request_options: {})
          #   @param app_id [Integer]
          #   @param flag_name [String]
          #   @param flag_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateParams::FlagState]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

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
