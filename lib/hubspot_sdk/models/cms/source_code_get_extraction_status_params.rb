# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::SourceCode#get_extraction_status
      class SourceCodeGetExtractionStatusParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute task_id
        #
        #   @return [Integer]
        required :task_id, Integer

        # @!method initialize(task_id:, request_options: {})
        #   @param task_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
