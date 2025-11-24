# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::Inboxes#list
      class InboxListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute default_page_length
        #
        #   @return [Integer, nil]
        optional :default_page_length, Integer

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(after: nil, archived: nil, default_page_length: nil, limit: nil, sort: nil, request_options: {})
        #   @param after [String]
        #   @param archived [Boolean]
        #   @param default_page_length [Integer]
        #   @param limit [Integer]
        #   @param sort [Array<String>]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
