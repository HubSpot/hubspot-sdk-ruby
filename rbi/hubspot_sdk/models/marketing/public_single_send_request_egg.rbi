# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicSingleSendRequestEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicSingleSendRequestEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The contactProperties field is a map of contact property values. Each contact
        # property value contains a name and value property. Each property will get set on
        # the contact record and will be visible in the template under {{ contact.NAME }}.
        # Use these properties when you want to set a contact property while you’re
        # sending the email. For example, when sending a receipt you may want to set a
        # last_paid_date property, as the sending of the receipt will have information
        # about the last payment.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :contact_properties

        # The customProperties field is a map of property values. Each property value
        # contains a name and value property. Each property will be visible in the
        # template under {{ custom.NAME }}. Note: Custom properties do not currently
        # support arrays. To provide a listing in an email, one workaround is to build an
        # HTML list (either with tables or ul) and specify it as a custom property.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :custom_properties

        # The content ID for the email, which can be found in email tool UI.
        sig { returns(Integer) }
        attr_accessor :email_id

        sig { returns(HubspotSDK::Marketing::PublicSingleSendEmail) }
        attr_reader :message

        sig do
          params(
            message: HubspotSDK::Marketing::PublicSingleSendEmail::OrHash
          ).void
        end
        attr_writer :message

        sig do
          params(
            contact_properties: T::Hash[Symbol, String],
            custom_properties: T::Hash[Symbol, T.anything],
            email_id: Integer,
            message: HubspotSDK::Marketing::PublicSingleSendEmail::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The contactProperties field is a map of contact property values. Each contact
          # property value contains a name and value property. Each property will get set on
          # the contact record and will be visible in the template under {{ contact.NAME }}.
          # Use these properties when you want to set a contact property while you’re
          # sending the email. For example, when sending a receipt you may want to set a
          # last_paid_date property, as the sending of the receipt will have information
          # about the last payment.
          contact_properties:,
          # The customProperties field is a map of property values. Each property value
          # contains a name and value property. Each property will be visible in the
          # template under {{ custom.NAME }}. Note: Custom properties do not currently
          # support arrays. To provide a listing in an email, one workaround is to build an
          # HTML list (either with tables or ul) and specify it as a custom property.
          custom_properties:,
          # The content ID for the email, which can be found in email tool UI.
          email_id:,
          message:
        )
        end

        sig do
          override.returns(
            {
              contact_properties: T::Hash[Symbol, String],
              custom_properties: T::Hash[Symbol, T.anything],
              email_id: Integer,
              message: HubspotSDK::Marketing::PublicSingleSendEmail
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
