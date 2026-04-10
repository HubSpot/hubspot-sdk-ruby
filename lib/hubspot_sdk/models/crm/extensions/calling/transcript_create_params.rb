# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          # @see HubSpotSDK::Resources::Crm::Extensions::Calling::Transcripts#create
          class TranscriptCreateParams < HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptCreateRequest
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
