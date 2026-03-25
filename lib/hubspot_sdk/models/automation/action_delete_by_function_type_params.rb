# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Actions#delete_by_function_type
      class ActionDeleteByFunctionTypeParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute definition_id
        #
        #   @return [String]
        required :definition_id, String

        # @!attribute function_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::ActionDeleteByFunctionTypeParams::FunctionType]
        required :function_type,
                 enum: -> { HubspotSDK::Automation::ActionDeleteByFunctionTypeParams::FunctionType }

        # @!method initialize(app_id:, definition_id:, function_type:, request_options: {})
        #   @param app_id [Integer]
        #   @param definition_id [String]
        #   @param function_type [Symbol, HubspotSDK::Models::Automation::ActionDeleteByFunctionTypeParams::FunctionType]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

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
