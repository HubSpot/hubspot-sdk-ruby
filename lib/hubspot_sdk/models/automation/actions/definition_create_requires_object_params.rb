# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      module Actions
        # @see HubSpotSDK::Resources::Automation::Actions::Definitions#create_requires_object
        class DefinitionCreateRequiresObjectParams < HubSpotSDK::Models::Automation::PublicActionDefinitionRequiresObjectRequest
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

          # @!method initialize(app_id:, definition_id:, request_options: {})
          #   @param app_id [Integer]
          #   @param definition_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
