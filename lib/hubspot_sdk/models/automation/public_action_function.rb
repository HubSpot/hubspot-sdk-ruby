# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicActionFunction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute function_source
        #
        #   @return [String]
        required :function_source, String, api_name: :functionSource

        # @!attribute function_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicActionFunction::FunctionType]
        required :function_type,
                 enum: -> { HubspotSDK::Automation::PublicActionFunction::FunctionType },
                 api_name: :functionType

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(function_source:, function_type:, id: nil)
        #   @param function_source [String]
        #   @param function_type [Symbol, HubspotSDK::Models::Automation::PublicActionFunction::FunctionType]
        #   @param id [String]

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
