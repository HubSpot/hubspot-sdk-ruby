# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailToDetails < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_ids
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailRecipients, nil]
        optional :contact_ids, -> { HubspotSDK::Marketing::PublicEmailRecipients }, api_name: :contactIds

        # @!attribute contact_ils_lists
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailRecipients, nil]
        optional :contact_ils_lists,
                 -> { HubspotSDK::Marketing::PublicEmailRecipients },
                 api_name: :contactIlsLists

        # @!attribute contact_lists
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
        #   @param contact_ids [HubspotSDK::Models::Marketing::PublicEmailRecipients]
        #
        #   @param contact_ils_lists [HubspotSDK::Models::Marketing::PublicEmailRecipients]
        #
        #   @param contact_lists [HubspotSDK::Models::Marketing::PublicEmailRecipients]
        #
        #   @param limit_send_frequency [Boolean]
        #
        #   @param suppress_graymail [Boolean] Whether to send to unengaged contacts (false) or not (true).
      end
    end
  end
end
