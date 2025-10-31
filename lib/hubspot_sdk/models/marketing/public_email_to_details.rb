# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailToDetails < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_ids
        #   Data structure representing lists of IDs that should be included and excluded.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailRecipients, nil]
        optional :contact_ids, -> { HubspotSDK::Marketing::PublicEmailRecipients }, api_name: :contactIds

        # @!attribute contact_ils_lists
        #   Data structure representing lists of IDs that should be included and excluded.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailRecipients, nil]
        optional :contact_ils_lists,
                 -> { HubspotSDK::Marketing::PublicEmailRecipients },
                 api_name: :contactIlsLists

        # @!attribute contact_lists
        #   Data structure representing lists of IDs that should be included and excluded.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailRecipients, nil]
        optional :contact_lists, -> { HubspotSDK::Marketing::PublicEmailRecipients }, api_name: :contactLists

        # @!attribute limit_send_frequency
        #
        #   @return [Boolean, nil]
        optional :limit_send_frequency, HubspotSDK::Internal::Type::Boolean, api_name: :limitSendFrequency

        # @!attribute suppress_graymail
        #   Whether to send to unengaged contacts (false) or not (true).
        #
        #   @return [Boolean, nil]
        optional :suppress_graymail, HubspotSDK::Internal::Type::Boolean, api_name: :suppressGraymail

        # @!method initialize(contact_ids: nil, contact_ils_lists: nil, contact_lists: nil, limit_send_frequency: nil, suppress_graymail: nil)
        #   Data structure representing the to fields of the email.
        #
        #   @param contact_ids [HubspotSDK::Models::Marketing::PublicEmailRecipients] Data structure representing lists of IDs that should be included and excluded.
        #
        #   @param contact_ils_lists [HubspotSDK::Models::Marketing::PublicEmailRecipients] Data structure representing lists of IDs that should be included and excluded.
        #
        #   @param contact_lists [HubspotSDK::Models::Marketing::PublicEmailRecipients] Data structure representing lists of IDs that should be included and excluded.
        #
        #   @param limit_send_frequency [Boolean]
        #
        #   @param suppress_graymail [Boolean] Whether to send to unengaged contacts (false) or not (true).
      end
    end
  end
end
