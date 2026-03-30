# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Actions#get_by_function_type
      class PublicActionFunction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute function_source
        #   The source code or script that defines the function's behavior.
        #
        #   @return [String]
        required :function_source, String, api_name: :functionSource

        # @!attribute function_type
        #   The type of function, with accepted values: POST_ACTION_EXECUTION,
        #   POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicActionFunction::FunctionType]
        required :function_type,
                 enum: -> { HubspotSDK::Automation::PublicActionFunction::FunctionType },
                 api_name: :functionType

        # @!attribute id
        #   The unique identifier for the action function.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(function_source:, function_type:, id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::PublicActionFunction} for more details.
        #
        #   @param function_source [String] The source code or script that defines the function's behavior.
        #
        #   @param function_type [Symbol, HubspotSDK::Models::Automation::PublicActionFunction::FunctionType] The type of function, with accepted values: POST_ACTION_EXECUTION, POST_FETCH_OP
        #
        #   @param id [String] The unique identifier for the action function.

        # The type of function, with accepted values: POST_ACTION_EXECUTION,
        # POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
        #
        # @see HubspotSDK::Models::Automation::PublicActionFunction#function_type
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
