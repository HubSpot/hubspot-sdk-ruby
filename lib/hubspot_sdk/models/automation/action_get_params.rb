# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Actions#get
      class ActionGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute definition_id
        #
        #   @return [String]
        required :definition_id, String

        # @!attribute revision_id
        #
        #   @return [String]
        required :revision_id, String

        # @!method initialize(app_id:, definition_id:, revision_id:, request_options: {})
        #   @param app_id [Integer]
        #   @param definition_id [String]
        #   @param revision_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
