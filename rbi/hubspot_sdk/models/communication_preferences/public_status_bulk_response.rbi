# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PublicStatusBulkResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::PublicStatusBulkResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of subscription status objects for the contact.
        sig do
          returns(T::Array[HubSpotSDK::CommunicationPreferences::PublicStatus])
        end
        attr_accessor :statuses

        # The email address of the contact.
        sig { returns(String) }
        attr_accessor :subscriber_id_string

        sig do
          params(
            statuses:
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatus::OrHash
              ],
            subscriber_id_string: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of subscription status objects for the contact.
          statuses:,
          # The email address of the contact.
          subscriber_id_string:
        )
        end

        sig do
          override.returns(
            {
              statuses:
                T::Array[HubSpotSDK::CommunicationPreferences::PublicStatus],
              subscriber_id_string: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
