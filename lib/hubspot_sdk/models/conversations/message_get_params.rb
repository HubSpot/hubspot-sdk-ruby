# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::Messages#get
      class MessageGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute thread_id
        #
        #   @return [Integer]
        required :thread_id, Integer

        # @!attribute property
        #   A specific property to include in the message response.
        #
        #   @return [String, nil]
        optional :property, String

        # @!method initialize(thread_id:, property: nil, request_options: {})
        #   @param thread_id [Integer]
        #
        #   @param property [String] A specific property to include in the message response.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
