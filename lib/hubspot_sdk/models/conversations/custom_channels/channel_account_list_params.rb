# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubSpotSDK::Resources::Conversations::CustomChannels::ChannelAccounts#list
        class ChannelAccountListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute channel_id
          #
          #   @return [Integer]
          required :channel_id, Integer

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubSpotSDK::Internal::Type::Boolean

          # @!attribute default_page_length
          #
          #   @return [Integer, nil]
          optional :default_page_length, Integer

          # @!attribute delivery_identifier_type
          #
          #   @return [Array<Symbol, HubSpotSDK::Models::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType>, nil]
          optional :delivery_identifier_type,
                   -> { HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType] }

          # @!attribute delivery_identifier_value
          #
          #   @return [Array<String>, nil]
          optional :delivery_identifier_value, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute sort
          #
          #   @return [Array<String>, nil]
          optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(channel_id:, after: nil, archived: nil, default_page_length: nil, delivery_identifier_type: nil, delivery_identifier_value: nil, limit: nil, sort: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Conversations::CustomChannels::ChannelAccountListParams}
          #   for more details.
          #
          #   @param channel_id [Integer]
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param default_page_length [Integer]
          #
          #   @param delivery_identifier_type [Array<Symbol, HubSpotSDK::Models::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType>]
          #
          #   @param delivery_identifier_value [Array<String>]
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param sort [Array<String>]
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

          module DeliveryIdentifierType
            extend HubSpotSDK::Internal::Type::Enum

            HS_EMAIL_ADDRESS = :HS_EMAIL_ADDRESS
            HS_PHONE_NUMBER = :HS_PHONE_NUMBER
            HS_SHORT_CODE = :HS_SHORT_CODE
            CHANNEL_SPECIFIC_OPAQUE_ID = :CHANNEL_SPECIFIC_OPAQUE_ID

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
