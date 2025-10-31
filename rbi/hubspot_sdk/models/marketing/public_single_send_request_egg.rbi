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

        # The content ID for the email, which can be found in email tool UI.
        sig { returns(Integer) }
        attr_accessor :email_id

        # A JSON object containing anything you want to override.
        sig { returns(HubspotSDK::Marketing::PublicSingleSendEmail) }
        attr_reader :message

        sig do
          params(
            message: HubspotSDK::Marketing::PublicSingleSendEmail::OrHash
          ).void
        end
        attr_writer :message

        # The contactProperties field is a map of contact property values. Each contact
        # property value contains a name and value property. Each property will get set on
        # the contact record and will be visible in the template under {{ contact.NAME }}.
        # Use these properties when you want to set a contact property while you’re
        # sending the email. For example, when sending a receipt you may want to set a
        # last_paid_date property, as the sending of the receipt will have information
        # about the last payment.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :contact_properties

        sig { params(contact_properties: T::Hash[Symbol, String]).void }
        attr_writer :contact_properties

        # The customProperties field is a map of property values. Each property value
        # contains a name and value property. Each property will be visible in the
        # template under {{ custom.NAME }}. Note: Custom properties do not currently
        # support arrays. To provide a listing in an email, one workaround is to build an
        # HTML list (either with tables or ul) and specify it as a custom property.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :custom_properties

        sig { params(custom_properties: T::Hash[Symbol, T.anything]).void }
        attr_writer :custom_properties

        # A request to send a single email asynchronously.
        sig do
          params(
            email_id: Integer,
            message: HubspotSDK::Marketing::PublicSingleSendEmail::OrHash,
            contact_properties: T::Hash[Symbol, String],
            custom_properties: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          # The content ID for the email, which can be found in email tool UI.
          email_id:,
          # A JSON object containing anything you want to override.
          message:,
          # The contactProperties field is a map of contact property values. Each contact
          # property value contains a name and value property. Each property will get set on
          # the contact record and will be visible in the template under {{ contact.NAME }}.
          # Use these properties when you want to set a contact property while you’re
          # sending the email. For example, when sending a receipt you may want to set a
          # last_paid_date property, as the sending of the receipt will have information
          # about the last payment.
          contact_properties: nil,
          # The customProperties field is a map of property values. Each property value
          # contains a name and value property. Each property will be visible in the
          # template under {{ custom.NAME }}. Note: Custom properties do not currently
          # support arrays. To provide a listing in an email, one workaround is to build an
          # HTML list (either with tables or ul) and specify it as a custom property.
          custom_properties: nil
        )
        end

        sig do
          override.returns(
            {
              email_id: Integer,
              message: HubspotSDK::Marketing::PublicSingleSendEmail,
              contact_properties: T::Hash[Symbol, String],
              custom_properties: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
