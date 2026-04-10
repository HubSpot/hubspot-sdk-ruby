# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListsByIDResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListsByIDResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The object list definitions.
        sig { returns(T::Array[HubSpotSDK::Crm::PublicObjectList]) }
        attr_accessor :lists

        sig do
          params(
            lists: T::Array[HubSpotSDK::Crm::PublicObjectList::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The object list definitions.
          lists:
        )
        end

        sig do
          override.returns(
            { lists: T::Array[HubSpotSDK::Crm::PublicObjectList] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
