# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIConnection < HubspotSDK::Internal::Type::BaseModel
        # @!attribute edge_type
        #
        #   @return [String]
        required :edge_type, String, api_name: :edgeType

        # @!attribute next_action_id
        #
        #   @return [String]
        required :next_action_id, String, api_name: :nextActionId

        # @!method initialize(edge_type:, next_action_id:)
        #   @param edge_type [String]
        #   @param next_action_id [String]
      end
    end
  end
end
