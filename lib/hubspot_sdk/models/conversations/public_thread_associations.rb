# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicThreadAssociations < HubspotSDK::Internal::Type::BaseModel
        # @!attribute associated_ticket_id
        #
        #   @return [String, nil]
        optional :associated_ticket_id, String, api_name: :associatedTicketId

        # @!method initialize(associated_ticket_id: nil)
        #   @param associated_ticket_id [String]
      end
    end
  end
end
