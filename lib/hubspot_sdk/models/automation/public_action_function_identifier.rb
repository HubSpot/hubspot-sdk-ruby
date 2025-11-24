# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicActionFunctionIdentifier < HubspotSDK::Internal::Type::BaseModel
        # @!attribute function_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicActionFunctionIdentifier::FunctionType]
        required :function_type,
                 enum: -> { HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType },
                 api_name: :functionType

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(function_type:, id: nil)
        #   @param function_type [Symbol, HubspotSDK::Models::Automation::PublicActionFunctionIdentifier::FunctionType]
        #   @param id [String]

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
