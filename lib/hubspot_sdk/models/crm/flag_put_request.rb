# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class FlagPutRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute default_state
        #   The state that the flag should have if there are no overrides for a particular
        #   portal
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::DefaultState]
        required :default_state,
                 enum: -> { HubspotSDK::Crm::FlagPutRequest::DefaultState },
                 api_name: :defaultState

        # @!attribute override_state
        #   A flag value that supercedes all other overrides, including portal-level values.
        #   Mostly used for things like emergency overrides
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::OverrideState, nil]
        optional :override_state,
                 enum: -> { HubspotSDK::Crm::FlagPutRequest::OverrideState },
                 api_name: :overrideState

        # @!method initialize(default_state:, override_state: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::FlagPutRequest} for more details.
        #
        #   @param default_state [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::DefaultState] The state that the flag should have if there are no overrides for a particular p
        #
        #   @param override_state [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::OverrideState] A flag value that supercedes all other overrides, including portal-level values.

        # The state that the flag should have if there are no overrides for a particular
        # portal
        #
        # @see HubspotSDK::Models::Crm::FlagPutRequest#default_state
        module DefaultState
          extend HubspotSDK::Internal::Type::Enum

          ABSENT = :ABSENT
          OFF = :OFF
          ON = :ON

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # A flag value that supercedes all other overrides, including portal-level values.
        # Mostly used for things like emergency overrides
        #
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
