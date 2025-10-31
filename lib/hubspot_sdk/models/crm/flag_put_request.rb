# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class FlagPutRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute default_state
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::FlagPutRequest::DefaultState]
        required :default_state,
                 enum: -> { HubspotSDK::CRM::FlagPutRequest::DefaultState },
                 api_name: :defaultState

        # @!attribute override_state
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::FlagPutRequest::OverrideState, nil]
        optional :override_state,
                 enum: -> { HubspotSDK::CRM::FlagPutRequest::OverrideState },
                 api_name: :overrideState

        # @!method initialize(default_state:, override_state: nil)
        #   @param default_state [Symbol, HubspotSDK::Models::CRM::FlagPutRequest::DefaultState]
        #   @param override_state [Symbol, HubspotSDK::Models::CRM::FlagPutRequest::OverrideState]

        # @see HubspotSDK::Models::CRM::FlagPutRequest#default_state
        module DefaultState
          extend HubspotSDK::Internal::Type::Enum

          OFF = :OFF
          ON = :ON
          ABSENT = :ABSENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::CRM::FlagPutRequest#override_state
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
