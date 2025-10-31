# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Apps#update
        class AppUpdateResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer, api_name: :appId

          # @!attribute default_state
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse::DefaultState]
          required :default_state,
                   enum: -> { HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse::DefaultState },
                   api_name: :defaultState

          # @!attribute flag_name
          #
          #   @return [String]
          required :flag_name, String, api_name: :flagName

          # @!attribute override_state
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse::OverrideState, nil]
          optional :override_state,
                   enum: -> { HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse::OverrideState },
                   api_name: :overrideState

          # @!method initialize(app_id:, default_state:, flag_name:, override_state: nil)
          #   @param app_id [Integer]
          #   @param default_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse::DefaultState]
          #   @param flag_name [String]
          #   @param override_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse::OverrideState]

          # @see HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse#default_state
          module DefaultState
            extend HubspotSDK::Internal::Type::Enum

            OFF = :OFF
            ON = :ON
            ABSENT = :ABSENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse#override_state
          module OverrideState
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
