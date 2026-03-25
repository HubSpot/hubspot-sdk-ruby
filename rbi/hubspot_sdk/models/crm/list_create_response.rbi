# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListCreateResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListCreateResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Crm::PublicObjectList) }
        attr_reader :list

        sig { params(list: HubspotSDK::Crm::PublicObjectList::OrHash).void }
        attr_writer :list

        sig do
          params(list: HubspotSDK::Crm::PublicObjectList::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(list:)
        end

        sig { override.returns({ list: HubspotSDK::Crm::PublicObjectList }) }
        def to_hash
        end
      end
    end
  end
end
