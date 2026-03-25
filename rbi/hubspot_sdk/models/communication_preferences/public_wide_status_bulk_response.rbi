# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class PublicWideStatusBulkResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::PublicWideStatusBulkResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The contact's email address.
        sig { returns(String) }
        attr_accessor :subscriber_id_string

        # An array containing the wide status results for the operation.
        sig do
          returns(
            T::Array[HubspotSDK::CommunicationPreferences::PublicWideStatus]
          )
        end
        attr_accessor :wide_statuses

        sig do
          params(
            subscriber_id_string: String,
            wide_statuses:
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicWideStatus::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The contact's email address.
          subscriber_id_string:,
          # An array containing the wide status results for the operation.
          wide_statuses:
        )
        end

        sig do
          override.returns(
            {
              subscriber_id_string: String,
              wide_statuses:
                T::Array[HubspotSDK::CommunicationPreferences::PublicWideStatus]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
