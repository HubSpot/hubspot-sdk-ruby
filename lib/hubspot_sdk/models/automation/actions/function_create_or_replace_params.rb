# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      module Actions
        # @see HubSpotSDK::Resources::Automation::Actions::Functions#create_or_replace
        class FunctionCreateOrReplaceParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

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
          #   @return [Symbol, HubSpotSDK::Models::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType]
          required :function_type,
                   enum: -> { HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType }

          # @!attribute function_id
          #
          #   @return [String]
          required :function_id, String

          # @!attribute body
          #
          #   @return [String]
          required :body, String

          # @!method initialize(app_id:, definition_id:, function_type:, function_id:, body:, request_options: {})
          #   @param app_id [Integer]
          #   @param definition_id [String]
          #   @param function_type [Symbol, HubSpotSDK::Models::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType]
          #   @param function_id [String]
          #   @param body [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

          module FunctionType
            extend HubSpotSDK::Internal::Type::Enum

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
end
