# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListsByIDResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListsByIDResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The object list definitions.
        sig { returns(T::Array[HubspotSDK::Crm::PublicObjectList]) }
        attr_accessor :lists

        sig do
          params(
            lists: T::Array[HubspotSDK::Crm::PublicObjectList::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The object list definitions.
          lists:
        )
        end

        sig do
          override.returns(
            { lists: T::Array[HubspotSDK::Crm::PublicObjectList] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
