# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class IntegratorActor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::IntegratorActor::Type]
        required :type, enum: -> { HubspotSDK::Conversations::IntegratorActor::Type }

        # @!attribute avatar
        #
        #   @return [String, nil]
        optional :avatar, String

        # @!method initialize(id:, name:, type:, avatar: nil)
        #   @param id [String]
        #   @param name [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::IntegratorActor::Type]
        #   @param avatar [String]

        # @see HubspotSDK::Models::Conversations::IntegratorActor#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          INTEGRATOR = :INTEGRATOR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
