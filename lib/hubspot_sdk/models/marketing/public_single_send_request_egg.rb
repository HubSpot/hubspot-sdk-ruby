# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicSingleSendRequestEgg < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contact_properties
        #   The contactProperties field is a map of contact property values. Each contact
        #   property value contains a name and value property. Each property will get set on
        #   the contact record and will be visible in the template under {{ contact.NAME }}.
        #   Use these properties when you want to set a contact property while you’re
        #   sending the email. For example, when sending a receipt you may want to set a
        #   last_paid_date property, as the sending of the receipt will have information
        #   about the last payment.
        #
        #   @return [Hash{Symbol=>String}]
        required :contact_properties, HubSpotSDK::Internal::Type::HashOf[String], api_name: :contactProperties

        # @!attribute custom_properties
        #   The customProperties field is a map of property values. Each property value
        #   contains a name and value property. Each property will be visible in the
        #   template under {{ custom.NAME }}. Note: Custom properties do not currently
        #   support arrays. To provide a listing in an email, one workaround is to build an
        #   HTML list (either with tables or ul) and specify it as a custom property.
        #
        #   @return [Hash{Symbol=>Object}]
        required :custom_properties,
                 HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown],
                 api_name: :customProperties

        # @!attribute email_id
        #   The content ID for the email, which can be found in email tool UI.
        #
        #   @return [Integer]
        required :email_id, Integer, api_name: :emailId

        # @!attribute message
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicSingleSendEmail]
        required :message, -> { HubSpotSDK::Marketing::PublicSingleSendEmail }

        # @!method initialize(contact_properties:, custom_properties:, email_id:, message:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::PublicSingleSendRequestEgg} for more details.
        #
        #   @param contact_properties [Hash{Symbol=>String}] The contactProperties field is a map of contact property values. Each contact pr
        #
        #   @param custom_properties [Hash{Symbol=>Object}] The customProperties field is a map of property values. Each property value cont
        #
        #   @param email_id [Integer] The content ID for the email, which can be found in email tool UI.
        #
        #   @param message [HubSpotSDK::Models::Marketing::PublicSingleSendEmail]
      end
    end
  end
end
