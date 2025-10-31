# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Apps#update
        class AppUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute default_state
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateParams::DefaultState]
          required :default_state,
                   enum: -> { HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState },
                   api_name: :defaultState

          # @!attribute override_state
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateParams::OverrideState, nil]
          optional :override_state,
                   enum: -> { HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState },
                   api_name: :overrideState

          # @!method initialize(app_id:, default_state:, override_state: nil, request_options: {})
          #   @param app_id [Integer]
          #   @param default_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateParams::DefaultState]
          #   @param override_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateParams::OverrideState]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          module DefaultState
            extend HubspotSDK::Internal::Type::Enum

            OFF = :OFF
            ON = :ON
            ABSENT = :ABSENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

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
