# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmailToDetails < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contact_ids
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicEmailRecipients, nil]
        optional :contact_ids, -> { HubSpotSDK::Marketing::PublicEmailRecipients }, api_name: :contactIds

        # @!attribute contact_ils_lists
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicEmailRecipients, nil]
        optional :contact_ils_lists,
                 -> { HubSpotSDK::Marketing::PublicEmailRecipients },
                 api_name: :contactIlsLists

        # @!attribute contact_lists
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicEmailRecipients, nil]
        optional :contact_lists, -> { HubSpotSDK::Marketing::PublicEmailRecipients }, api_name: :contactLists

        # @!attribute limit_send_frequency
        #
        #   @return [Boolean, nil]
        optional :limit_send_frequency, HubSpotSDK::Internal::Type::Boolean, api_name: :limitSendFrequency

        # @!attribute suppress_graymail
        #   Whether to send to unengaged contacts (false) or not (true).
        #
        #   @return [Boolean, nil]
        optional :suppress_graymail, HubSpotSDK::Internal::Type::Boolean, api_name: :suppressGraymail

        # @!method initialize(contact_ids: nil, contact_ils_lists: nil, contact_lists: nil, limit_send_frequency: nil, suppress_graymail: nil)
        #   @param contact_ids [HubSpotSDK::Models::Marketing::PublicEmailRecipients]
        #
        #   @param contact_ils_lists [HubSpotSDK::Models::Marketing::PublicEmailRecipients]
        #
        #   @param contact_lists [HubSpotSDK::Models::Marketing::PublicEmailRecipients]
        #
        #   @param limit_send_frequency [Boolean]
        #
        #   @param suppress_graymail [Boolean] Whether to send to unengaged contacts (false) or not (true).
      end
    end
  end
end
