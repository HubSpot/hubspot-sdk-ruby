# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Transactional
        class SingleEmail
          # Asynchronously send a transactional email. Returns the status of the email send
          # with a statusId that can be used to continuously query for the status using the
          # Email Send Status API.
          sig do
            params(
              email_id: Integer,
              message: HubspotSDK::Marketing::PublicSingleSendEmail::OrHash,
              contact_properties: T::Hash[Symbol, String],
              custom_properties: T::Hash[Symbol, T.anything],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::EmailSendStatusView)
          end
          def send_(
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
            custom_properties: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
