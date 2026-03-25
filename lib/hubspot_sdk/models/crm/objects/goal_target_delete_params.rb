# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::GoalTargets#delete
        class GoalTargetDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute goal_target_id
          #
          #   @return [String]
          required :goal_target_id, String

          # @!method initialize(goal_target_id:, request_options: {})
          #   @param goal_target_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
