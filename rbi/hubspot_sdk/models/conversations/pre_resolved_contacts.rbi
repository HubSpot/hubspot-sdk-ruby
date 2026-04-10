# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PreResolvedContacts < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PreResolvedContacts,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Conversations::PreResolvedContact]) }
        attr_accessor :contacts

        sig do
          params(
            contacts:
              T::Array[HubSpotSDK::Conversations::PreResolvedContact::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(contacts:)
        end

        sig do
          override.returns(
            {
              contacts: T::Array[HubSpotSDK::Conversations::PreResolvedContact]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
