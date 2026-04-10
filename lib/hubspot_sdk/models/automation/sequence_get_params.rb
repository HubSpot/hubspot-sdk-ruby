# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      # @see HubSpotSDK::Resources::Automation::Sequences#get
      class SequenceGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute sequence_id
        #
        #   @return [String]
        required :sequence_id, String

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(sequence_id:, user_id:, request_options: {})
        #   @param sequence_id [String]
        #   @param user_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
