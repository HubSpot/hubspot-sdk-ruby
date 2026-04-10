# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicActionRevision < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the action revision.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time when the action revision was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute definition
        #
        #   @return [HubSpotSDK::Models::Automation::PublicActionDefinition]
        required :definition, -> { HubSpotSDK::Automation::PublicActionDefinition }

        # @!attribute revision_id
        #   The unique identifier for the specific revision of the action.
        #
        #   @return [String]
        required :revision_id, String, api_name: :revisionId

        # @!method initialize(id:, created_at:, definition:, revision_id:)
        #   @param id [String] The unique identifier for the action revision.
        #
        #   @param created_at [Time] The date and time when the action revision was created.
        #
        #   @param definition [HubSpotSDK::Models::Automation::PublicActionDefinition]
        #
        #   @param revision_id [String] The unique identifier for the specific revision of the action.
      end
    end
  end
end
