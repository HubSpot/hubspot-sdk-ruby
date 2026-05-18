# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PreResolvedContacts < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contacts
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::PreResolvedContact>]
        required :contacts,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PreResolvedContact] }

        # @!method initialize(contacts:)
        #   @param contacts [Array<HubSpotSDK::Models::Conversations::PreResolvedContact>]
      end
    end
  end
end
