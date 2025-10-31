# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicActionRevision < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute definition
        #
        #   @return [HubspotSDK::Models::Automation::PublicActionDefinition]
        required :definition, -> { HubspotSDK::Automation::PublicActionDefinition }

        # @!attribute revision_id
        #
        #   @return [String]
        required :revision_id, String, api_name: :revisionId

        # @!method initialize(id:, created_at:, definition:, revision_id:)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param definition [HubspotSDK::Models::Automation::PublicActionDefinition]
        #   @param revision_id [String]
      end
    end
  end
end
