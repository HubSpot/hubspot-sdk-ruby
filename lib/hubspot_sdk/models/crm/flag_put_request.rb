# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class FlagPutRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute default_state
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::DefaultState]
        required :default_state,
                 enum: -> { HubspotSDK::Crm::FlagPutRequest::DefaultState },
                 api_name: :defaultState

        # @!attribute override_state
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::OverrideState, nil]
        optional :override_state,
                 enum: -> { HubspotSDK::Crm::FlagPutRequest::OverrideState },
                 api_name: :overrideState

        # @!method initialize(default_state:, override_state: nil)
        #   @param default_state [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::DefaultState]
        #   @param override_state [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::OverrideState]

        # @see HubspotSDK::Models::Crm::FlagPutRequest#default_state
        module DefaultState
          extend HubspotSDK::Internal::Type::Enum

          ABSENT = :ABSENT
          OFF = :OFF
          ON = :ON

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::FlagPutRequest#override_state
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
