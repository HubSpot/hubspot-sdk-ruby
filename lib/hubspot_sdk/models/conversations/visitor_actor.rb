# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class VisitorActor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::VisitorActor::Type]
        required :type, enum: -> { HubspotSDK::Conversations::VisitorActor::Type }

        # @!attribute avatar
        #
        #   @return [String, nil]
        optional :avatar, String

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, type:, avatar: nil, email: nil, name: nil)
        #   @param id [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::VisitorActor::Type]
        #   @param avatar [String]
        #   @param email [String]
        #   @param name [String]

        # @see HubspotSDK::Models::Conversations::VisitorActor#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          VISITOR = :VISITOR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
