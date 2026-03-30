# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Actions#create_or_replace
      class PublicActionFunctionIdentifier < HubspotSDK::Internal::Type::BaseModel
        # @!attribute function_type
        #   The type of function, with accepted values: POST_ACTION_EXECUTION,
        #   POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicActionFunctionIdentifier::FunctionType]
        required :function_type,
                 enum: -> { HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType },
                 api_name: :functionType

        # @!attribute id
        #   The unique identifier for the function.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(function_type:, id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::PublicActionFunctionIdentifier} for more
        #   details.
        #
        #   @param function_type [Symbol, HubspotSDK::Models::Automation::PublicActionFunctionIdentifier::FunctionType] The type of function, with accepted values: POST_ACTION_EXECUTION, POST_FETCH_OP
        #
        #   @param id [String] The unique identifier for the function.

        # The type of function, with accepted values: POST_ACTION_EXECUTION,
        # POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
        #
        # @see HubspotSDK::Models::Automation::PublicActionFunctionIdentifier#function_type
        module FunctionType
          extend HubspotSDK::Internal::Type::Enum

          POST_ACTION_EXECUTION = :POST_ACTION_EXECUTION
          POST_FETCH_OPTIONS = :POST_FETCH_OPTIONS
          PRE_ACTION_EXECUTION = :PRE_ACTION_EXECUTION
          PRE_FETCH_OPTIONS = :PRE_FETCH_OPTIONS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
