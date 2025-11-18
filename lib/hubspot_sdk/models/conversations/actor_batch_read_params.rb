# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::Actors#batch_read
      class ActorBatchReadParams < HubspotSDK::Models::BatchInputString
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute property
        #   A specific property to include in the actor response.
        #
        #   @return [String, nil]
        optional :property, String

        # @!method initialize(property: nil, request_options: {})
        #   @param property [String] A specific property to include in the actor response.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
