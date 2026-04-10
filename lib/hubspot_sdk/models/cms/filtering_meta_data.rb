# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class FilteringMetaData < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_helpdesk_routable_teams_only
        #
        #   @return [Boolean]
        required :include_helpdesk_routable_teams_only,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeHelpdeskRoutableTeamsOnly

        # @!attribute include_unconfirmed_users
        #
        #   @return [Boolean]
        required :include_unconfirmed_users,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeUnconfirmedUsers

        # @!attribute list_processing_types
        #
        #   @return [Array<String>]
        required :list_processing_types,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :listProcessingTypes

        # @!attribute pipeline_ids
        #
        #   @return [Array<String>]
        required :pipeline_ids, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :pipelineIds

        # @!method initialize(include_helpdesk_routable_teams_only:, include_unconfirmed_users:, list_processing_types:, pipeline_ids:)
        #   @param include_helpdesk_routable_teams_only [Boolean]
        #   @param include_unconfirmed_users [Boolean]
        #   @param list_processing_types [Array<String>]
        #   @param pipeline_ids [Array<String>]
      end
    end
  end
end
