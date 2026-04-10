# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListFetchResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Crm::PublicObjectList) }
        attr_reader :list

        sig { params(list: HubSpotSDK::Crm::PublicObjectList::OrHash).void }
        attr_writer :list

        sig do
          params(list: HubSpotSDK::Crm::PublicObjectList::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(list:)
        end

        sig { override.returns({ list: HubSpotSDK::Crm::PublicObjectList }) }
        def to_hash
        end
      end
    end
  end
end
