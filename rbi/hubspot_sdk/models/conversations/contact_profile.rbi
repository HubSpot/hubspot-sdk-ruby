# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ContactProfile < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ContactProfile,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Conversations::ContactAddress]) }
        attr_accessor :addresses

        sig { returns(T::Array[HubspotSDK::Conversations::ContactEmail]) }
        attr_accessor :emails

        sig { returns(T::Array[HubspotSDK::Conversations::ContactPhone]) }
        attr_accessor :phones

        sig { returns(T::Array[HubspotSDK::Conversations::ContactURL]) }
        attr_accessor :urls

        sig { returns(T.nilable(HubspotSDK::Conversations::ContactName)) }
        attr_reader :name

        sig do
          params(name: HubspotSDK::Conversations::ContactName::OrHash).void
        end
        attr_writer :name

        sig { returns(T.nilable(HubspotSDK::Conversations::ContactOrg)) }
        attr_reader :org

        sig { params(org: HubspotSDK::Conversations::ContactOrg::OrHash).void }
        attr_writer :org

        sig do
          params(
            addresses:
              T::Array[HubspotSDK::Conversations::ContactAddress::OrHash],
            emails: T::Array[HubspotSDK::Conversations::ContactEmail::OrHash],
            phones: T::Array[HubspotSDK::Conversations::ContactPhone::OrHash],
            urls: T::Array[HubspotSDK::Conversations::ContactURL::OrHash],
            name: HubspotSDK::Conversations::ContactName::OrHash,
            org: HubspotSDK::Conversations::ContactOrg::OrHash
          ).returns(T.attached_class)
        end
        def self.new(addresses:, emails:, phones:, urls:, name: nil, org: nil)
        end

        sig do
          override.returns(
            {
              addresses: T::Array[HubspotSDK::Conversations::ContactAddress],
              emails: T::Array[HubspotSDK::Conversations::ContactEmail],
              phones: T::Array[HubspotSDK::Conversations::ContactPhone],
              urls: T::Array[HubspotSDK::Conversations::ContactURL],
              name: HubspotSDK::Conversations::ContactName,
              org: HubspotSDK::Conversations::ContactOrg
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
