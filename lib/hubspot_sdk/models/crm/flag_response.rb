# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::FeatureFlags#update
      class FlagResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #   The ID of the app
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute default_state
        #   The flag state for any portal that doesn't have an override value
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::FlagResponse::DefaultState]
        required :default_state,
                 enum: -> {
                   HubspotSDK::Crm::FlagResponse::DefaultState
                 },
                 api_name: :defaultState

        # @!attribute flag_name
        #   The name of the flag
        #
        #   @return [String]
        required :flag_name, String, api_name: :flagName

        # @!attribute override_state
        #   An optional flag value that overrides all others for this flag name and app,
        #   including portal-level values
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::FlagResponse::OverrideState, nil]
        optional :override_state,
                 enum: -> { HubspotSDK::Crm::FlagResponse::OverrideState },
                 api_name: :overrideState

        # @!method initialize(app_id:, default_state:, flag_name:, override_state: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::FlagResponse} for more details.
        #
        #   @param app_id [Integer] The ID of the app
        #
        #   @param default_state [Symbol, HubspotSDK::Models::Crm::FlagResponse::DefaultState] The flag state for any portal that doesn't have an override value
        #
        #   @param flag_name [String] The name of the flag
        #
        #   @param override_state [Symbol, HubspotSDK::Models::Crm::FlagResponse::OverrideState] An optional flag value that overrides all others for this flag name and app, inc

        # The flag state for any portal that doesn't have an override value
        #
        # @see HubspotSDK::Models::Crm::FlagResponse#default_state
        module DefaultState
          extend HubspotSDK::Internal::Type::Enum

          ABSENT = :ABSENT
          OFF = :OFF
          ON = :ON

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # An optional flag value that overrides all others for this flag name and app,
        # including portal-level values
        #
        # @see HubspotSDK::Models::Crm::FlagResponse#override_state
        module OverrideState
          extend HubspotSDK::Internal::Type::Enum

          ABSENT = :ABSENT
          OFF = :OFF
          ON = :ON

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
