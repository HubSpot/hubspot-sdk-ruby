# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::Threads#get
      class ThreadGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute archived
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute association
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Conversations::ThreadGetParams::Association>, nil]
        optional :association,
                 -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Conversations::ThreadGetParams::Association] }

        # @!attribute property
        #
        #   @return [String, nil]
        optional :property, String

        # @!method initialize(archived: nil, association: nil, property: nil, request_options: {})
        #   @param archived [Boolean]
        #   @param association [Array<Symbol, HubspotSDK::Models::Conversations::ThreadGetParams::Association>]
        #   @param property [String]
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
