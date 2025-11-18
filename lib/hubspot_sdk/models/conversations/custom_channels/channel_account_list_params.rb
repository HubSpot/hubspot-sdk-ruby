# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccounts#list
        class ChannelAccountListParams < HubspotSDK::Internal::Type::BaseModel
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

          # @!attribute delivery_identifier_type
          #
          #   @return [Array<String>, nil]
          optional :delivery_identifier_type, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute delivery_identifier_value
          #
          #   @return [Array<String>, nil]
          optional :delivery_identifier_value, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute sort
          #
          #   @return [Array<String>, nil]
          optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(after: nil, archived: nil, default_page_length: nil, delivery_identifier_type: nil, delivery_identifier_value: nil, limit: nil, sort: nil, request_options: {})
          #   @param after [String]
          #   @param archived [Boolean]
          #   @param default_page_length [Integer]
          #   @param delivery_identifier_type [Array<String>]
          #   @param delivery_identifier_value [Array<String>]
          #   @param limit [Integer]
          #   @param sort [Array<String>]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
