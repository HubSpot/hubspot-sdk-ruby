# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::GoalTargets#update
        class GoalTargetUpdateParams < HubspotSDK::Models::Crm::SimplePublicObjectInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute goal_target_id
          #
          #   @return [String]
          required :goal_target_id, String

          # @!attribute id_property
          #   The name of a property whose values are unique for this object type
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!method initialize(goal_target_id:, id_property: nil, request_options: {})
          #   @param goal_target_id [String]
          #
          #   @param id_property [String] The name of a property whose values are unique for this object type
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
