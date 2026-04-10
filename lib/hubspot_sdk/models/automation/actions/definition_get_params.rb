# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      module Actions
        # @see HubSpotSDK::Resources::Automation::Actions::Definitions#get
        class DefinitionGetParams < HubSpotSDK::Internal::Type::BaseModel
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

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubSpotSDK::Internal::Type::Boolean

          # @!method initialize(app_id:, definition_id:, archived: nil, request_options: {})
          #   @param app_id [Integer]
          #
          #   @param definition_id [String]
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
