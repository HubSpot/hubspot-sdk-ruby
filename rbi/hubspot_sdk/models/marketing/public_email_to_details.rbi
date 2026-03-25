# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailToDetails < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicEmailToDetails,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(HubspotSDK::Marketing::PublicEmailRecipients)) }
        attr_reader :contact_ids

        sig do
          params(
            contact_ids: HubspotSDK::Marketing::PublicEmailRecipients::OrHash
          ).void
        end
        attr_writer :contact_ids

        sig { returns(T.nilable(HubspotSDK::Marketing::PublicEmailRecipients)) }
        attr_reader :contact_ils_lists

        sig do
          params(
            contact_ils_lists:
              HubspotSDK::Marketing::PublicEmailRecipients::OrHash
          ).void
        end
        attr_writer :contact_ils_lists

        sig { returns(T.nilable(HubspotSDK::Marketing::PublicEmailRecipients)) }
        attr_reader :contact_lists

        sig do
          params(
            contact_lists: HubspotSDK::Marketing::PublicEmailRecipients::OrHash
          ).void
        end
        attr_writer :contact_lists

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :limit_send_frequency

        sig { params(limit_send_frequency: T::Boolean).void }
        attr_writer :limit_send_frequency

        # Whether to send to unengaged contacts (false) or not (true).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :suppress_graymail

        sig { params(suppress_graymail: T::Boolean).void }
        attr_writer :suppress_graymail

        sig do
          params(
            contact_ids: HubspotSDK::Marketing::PublicEmailRecipients::OrHash,
            contact_ils_lists:
              HubspotSDK::Marketing::PublicEmailRecipients::OrHash,
            contact_lists: HubspotSDK::Marketing::PublicEmailRecipients::OrHash,
            limit_send_frequency: T::Boolean,
            suppress_graymail: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          contact_ids: nil,
          contact_ils_lists: nil,
          contact_lists: nil,
          limit_send_frequency: nil,
          # Whether to send to unengaged contacts (false) or not (true).
          suppress_graymail: nil
        )
        end

        sig do
          override.returns(
            {
              contact_ids: HubspotSDK::Marketing::PublicEmailRecipients,
              contact_ils_lists: HubspotSDK::Marketing::PublicEmailRecipients,
              contact_lists: HubspotSDK::Marketing::PublicEmailRecipients,
              limit_send_frequency: T::Boolean,
              suppress_graymail: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
