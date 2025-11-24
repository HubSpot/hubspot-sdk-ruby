# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class AttentionSpanEventRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute media_type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::AttentionSpanEventRequest::MediaType]
        required :media_type,
                 enum: -> { HubspotSDK::Cms::AttentionSpanEventRequest::MediaType },
                 api_name: :mediaType

        # @!attribute occurred_timestamp
        #
        #   @return [Integer]
        required :occurred_timestamp, Integer, api_name: :occurredTimestamp

        # @!attribute raw_data_map
        #
        #   @return [Hash{Symbol=>Integer}]
        required :raw_data_map, HubspotSDK::Internal::Type::HashOf[Integer], api_name: :rawDataMap

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String, api_name: :sessionId

        # @!attribute _hsenc
        #
        #   @return [String, nil]
        optional :_hsenc, String

        # @!attribute contact_id
        #
        #   @return [Integer, nil]
        optional :contact_id, Integer, api_name: :contactId

        # @!attribute contact_utk
        #
        #   @return [String, nil]
        optional :contact_utk, String, api_name: :contactUtk

        # @!attribute derived_values
        #
        #   @return [HubspotSDK::Models::Cms::AttentionSpanCalculatedValues, nil]
        optional :derived_values,
                 -> {
                   HubspotSDK::Cms::AttentionSpanCalculatedValues
                 },
                 api_name: :derivedValues

        # @!attribute external_id
        #
        #   @return [String, nil]
        optional :external_id, String, api_name: :externalId

        # @!attribute media_bridge_id
        #
        #   @return [Integer, nil]
        optional :media_bridge_id, Integer, api_name: :mediaBridgeId

        # @!attribute media_name
        #
        #   @return [String, nil]
        optional :media_name, String, api_name: :mediaName

        # @!attribute media_url
        #
        #   @return [String, nil]
        optional :media_url, String, api_name: :mediaUrl

        # @!attribute page_id
        #
        #   @return [Integer, nil]
        optional :page_id, Integer, api_name: :pageId

        # @!attribute page_name
        #
        #   @return [String, nil]
        optional :page_name, String, api_name: :pageName

        # @!attribute page_url
        #
        #   @return [String, nil]
        optional :page_url, String, api_name: :pageUrl

        # @!attribute raw_data_string
        #
        #   @return [String, nil]
        optional :raw_data_string, String, api_name: :rawDataString

        # @!method initialize(media_type:, occurred_timestamp:, raw_data_map:, session_id:, _hsenc: nil, contact_id: nil, contact_utk: nil, derived_values: nil, external_id: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, raw_data_string: nil)
        #   @param media_type [Symbol, HubspotSDK::Models::Cms::AttentionSpanEventRequest::MediaType]
        #   @param occurred_timestamp [Integer]
        #   @param raw_data_map [Hash{Symbol=>Integer}]
        #   @param session_id [String]
        #   @param _hsenc [String]
        #   @param contact_id [Integer]
        #   @param contact_utk [String]
        #   @param derived_values [HubspotSDK::Models::Cms::AttentionSpanCalculatedValues]
        #   @param external_id [String]
        #   @param media_bridge_id [Integer]
        #   @param media_name [String]
        #   @param media_url [String]
        #   @param page_id [Integer]
        #   @param page_name [String]
        #   @param page_url [String]
        #   @param raw_data_string [String]

        # @see HubspotSDK::Models::Cms::AttentionSpanEventRequest#media_type
        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          AUDIO = :AUDIO
          DOCUMENT = :DOCUMENT
          IMAGE = :IMAGE
          OTHER = :OTHER
          VIDEO = :VIDEO

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
