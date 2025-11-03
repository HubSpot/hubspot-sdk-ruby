# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          # @see HubspotSDK::Resources::Crm::Extensions::Calling::Transcripts#create
          class TranscriptCreateParams < HubspotSDK::Models::Crm::Extensions::Calling::TranscriptCreateRequest
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
