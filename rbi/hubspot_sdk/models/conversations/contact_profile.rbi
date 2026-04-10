# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class ContactProfile < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::ContactProfile,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Conversations::ContactAddress]) }
        attr_accessor :addresses

        sig { returns(T::Array[HubSpotSDK::Conversations::ContactEmail]) }
        attr_accessor :emails

        sig { returns(T::Array[HubSpotSDK::Conversations::ContactPhone]) }
        attr_accessor :phones

        sig { returns(T::Array[HubSpotSDK::Conversations::ContactURL]) }
        attr_accessor :urls

        sig { returns(T.nilable(HubSpotSDK::Conversations::ContactName)) }
        attr_reader :name

        sig do
          params(name: HubSpotSDK::Conversations::ContactName::OrHash).void
        end
        attr_writer :name

        sig { returns(T.nilable(HubSpotSDK::Conversations::ContactOrg)) }
        attr_reader :org

        sig { params(org: HubSpotSDK::Conversations::ContactOrg::OrHash).void }
        attr_writer :org

        sig do
          params(
            addresses:
              T::Array[HubSpotSDK::Conversations::ContactAddress::OrHash],
            emails: T::Array[HubSpotSDK::Conversations::ContactEmail::OrHash],
            phones: T::Array[HubSpotSDK::Conversations::ContactPhone::OrHash],
            urls: T::Array[HubSpotSDK::Conversations::ContactURL::OrHash],
            name: HubSpotSDK::Conversations::ContactName::OrHash,
            org: HubSpotSDK::Conversations::ContactOrg::OrHash
          ).returns(T.attached_class)
        end
        def self.new(addresses:, emails:, phones:, urls:, name: nil, org: nil)
        end

        sig do
          override.returns(
            {
              addresses: T::Array[HubSpotSDK::Conversations::ContactAddress],
              emails: T::Array[HubSpotSDK::Conversations::ContactEmail],
              phones: T::Array[HubSpotSDK::Conversations::ContactPhone],
              urls: T::Array[HubSpotSDK::Conversations::ContactURL],
              name: HubSpotSDK::Conversations::ContactName,
              org: HubSpotSDK::Conversations::ContactOrg
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
