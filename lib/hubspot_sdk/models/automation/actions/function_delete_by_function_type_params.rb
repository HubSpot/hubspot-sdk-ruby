# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      module Actions
        # @see HubspotSDK::Resources::Automation::Actions::Functions#delete_by_function_type
        class FunctionDeleteByFunctionTypeParams < HubspotSDK::Internal::Type::BaseModel
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

          # @!method initialize(app_id:, definition_id:, request_options: {})
          #   @param app_id [Integer]
          #   @param definition_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          module FunctionType
            extend HubspotSDK::Internal::Type::Enum

            PRE_ACTION_EXECUTION = :PRE_ACTION_EXECUTION
            PRE_FETCH_OPTIONS = :PRE_FETCH_OPTIONS
            POST_FETCH_OPTIONS = :POST_FETCH_OPTIONS
            POST_ACTION_EXECUTION = :POST_ACTION_EXECUTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
