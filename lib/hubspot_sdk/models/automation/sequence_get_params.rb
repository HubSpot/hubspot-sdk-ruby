# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Sequences#get
      class SequenceGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute sequence_id
        #
        #   @return [String]
        required :sequence_id, String

        # @!attribute user_id
        #   The unique identifier of the user requesting the sequence details. This
        #   parameter is required.
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(sequence_id:, user_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::SequenceGetParams} for more details.
        #
        #   @param sequence_id [String]
        #
        #   @param user_id [String] The unique identifier of the user requesting the sequence details. This paramete
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
