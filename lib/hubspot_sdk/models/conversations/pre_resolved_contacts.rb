# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PreResolvedContacts < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contacts
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PreResolvedContact>]
        required :contacts,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PreResolvedContact] }

        # @!method initialize(contacts:)
        #   @param contacts [Array<HubspotSDK::Models::Conversations::PreResolvedContact>]
      end
    end
  end
end
