# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::Threads#list
      class ThreadListParams < HubspotSDK::Internal::Type::BaseModel
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

        # @!attribute associated_contact_id
        #
        #   @return [Integer, nil]
        optional :associated_contact_id, Integer

        # @!attribute association
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Conversations::ThreadListParams::Association>, nil]
        optional :association,
                 -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Conversations::ThreadListParams::Association] }

        # @!attribute inbox_id
        #
        #   @return [Array<Integer>, nil]
        optional :inbox_id, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute latest_message_timestamp_after
        #
        #   @return [Time, nil]
        optional :latest_message_timestamp_after, Time

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute property
        #
        #   @return [String, nil]
        optional :property, String

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute thread_status
        #
        #   @return [String, nil]
        optional :thread_status, String

        # @!method initialize(after: nil, archived: nil, associated_contact_id: nil, association: nil, inbox_id: nil, latest_message_timestamp_after: nil, limit: nil, property: nil, sort: nil, thread_status: nil, request_options: {})
        #   @param after [String]
        #   @param archived [Boolean]
        #   @param associated_contact_id [Integer]
        #   @param association [Array<Symbol, HubspotSDK::Models::Conversations::ThreadListParams::Association>]
        #   @param inbox_id [Array<Integer>]
        #   @param latest_message_timestamp_after [Time]
        #   @param limit [Integer]
        #   @param property [String]
        #   @param sort [Array<String>]
        #   @param thread_status [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module Association
          extend HubspotSDK::Internal::Type::Enum

          TICKET = :TICKET

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
