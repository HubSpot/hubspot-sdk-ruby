# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class PublicBulkOptOutFromAllResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Subscriptions::PublicBulkOptOutFromAllResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The email address of the contact.
          sig { returns(String) }
          attr_accessor :subscriber_id_string

          # An array of subscription status objects for the contact.
          sig do
            returns(
              T.nilable(
                T::Array[HubspotSDK::Marketing::Subscriptions::PublicStatus]
              )
            )
          end
          attr_reader :statuses

          sig do
            params(
              statuses:
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicStatus::OrHash
                ]
            ).void
          end
          attr_writer :statuses

          sig do
            params(
              subscriber_id_string: String,
              statuses:
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicStatus::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The email address of the contact.
            subscriber_id_string:,
            # An array of subscription status objects for the contact.
            statuses: nil
          )
          end

          sig do
            override.returns(
              {
                subscriber_id_string: String,
                statuses:
                  T::Array[HubspotSDK::Marketing::Subscriptions::PublicStatus]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
