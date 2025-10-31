# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicSingleSendRequestEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email_id
        #   The content ID for the email, which can be found in email tool UI.
        #
        #   @return [Integer]
        required :email_id, Integer, api_name: :emailId

        # @!attribute message
        #   A JSON object containing anything you want to override.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicSingleSendEmail]
        required :message, -> { HubspotSDK::Marketing::PublicSingleSendEmail }

        # @!attribute contact_properties
        #   The contactProperties field is a map of contact property values. Each contact
        #   property value contains a name and value property. Each property will get set on
        #   the contact record and will be visible in the template under {{ contact.NAME }}.
        #   Use these properties when you want to set a contact property while you’re
        #   sending the email. For example, when sending a receipt you may want to set a
        #   last_paid_date property, as the sending of the receipt will have information
        #   about the last payment.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :contact_properties, HubspotSDK::Internal::Type::HashOf[String], api_name: :contactProperties

        # @!attribute custom_properties
        #   The customProperties field is a map of property values. Each property value
        #   contains a name and value property. Each property will be visible in the
        #   template under {{ custom.NAME }}. Note: Custom properties do not currently
        #   support arrays. To provide a listing in an email, one workaround is to build an
        #   HTML list (either with tables or ul) and specify it as a custom property.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :custom_properties,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :customProperties

        # @!method initialize(email_id:, message:, contact_properties: nil, custom_properties: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicSingleSendRequestEgg} for more details.
        #
        #   A request to send a single email asynchronously.
        #
        #   @param email_id [Integer] The content ID for the email, which can be found in email tool UI.
        #
        #   @param message [HubspotSDK::Models::Marketing::PublicSingleSendEmail] A JSON object containing anything you want to override.
        #
        #   @param contact_properties [Hash{Symbol=>String}] The contactProperties field is a map of contact property values. Each contact pr
        #
        #   @param custom_properties [Hash{Symbol=>Object}] The customProperties field is a map of property values. Each property value cont
      end
    end
  end
end
