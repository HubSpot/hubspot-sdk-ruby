# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PreResolvedContacts < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PreResolvedContacts,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Conversations::PreResolvedContact]) }
        attr_accessor :contacts

        sig do
          params(
            contacts:
              T::Array[HubspotSDK::Conversations::PreResolvedContact::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(contacts:)
        end

        sig do
          override.returns(
            {
              contacts: T::Array[HubspotSDK::Conversations::PreResolvedContact]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
