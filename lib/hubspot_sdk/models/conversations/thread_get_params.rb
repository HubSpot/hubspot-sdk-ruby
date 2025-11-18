# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::Threads#get
      class ThreadGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute archived
        #   Whether to return only results that have been archived. Default is false.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute association
        #   You can specify an association type here of `TICKET`. If this is set the
        #   response will included a thread associations object and associated ticket id if
        #   present. If there are no associations to a ticket with this conversation, then
        #   the thread associations object will not be present on the response.
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Conversations::ThreadGetParams::Association>, nil]
        optional :association,
                 -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Conversations::ThreadGetParams::Association] }

        # @!attribute property
        #   A specific property to include in the thread response.
        #
        #   @return [String, nil]
        optional :property, String

        # @!method initialize(archived: nil, association: nil, property: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::ThreadGetParams} for more details.
        #
        #   @param archived [Boolean] Whether to return only results that have been archived. Default is false.
        #
        #   @param association [Array<Symbol, HubspotSDK::Models::Conversations::ThreadGetParams::Association>] You can specify an association type here of `TICKET`. If this is set the respons
        #
        #   @param property [String] A specific property to include in the thread response.
        #
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
