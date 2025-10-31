# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class PublicStatusBulkResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute statuses
          #   An array of subscription status objects for the contact.
          #
          #   @return [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatus>]
          required :statuses,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatus] }

          # @!attribute subscriber_id_string
          #   The email address of the contact.
          #
          #   @return [String]
          required :subscriber_id_string, String, api_name: :subscriberIdString

          # @!method initialize(statuses:, subscriber_id_string:)
          #   @param statuses [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatus>] An array of subscription status objects for the contact.
          #
          #   @param subscriber_id_string [String] The email address of the contact.
        end
      end
    end
  end
end
