# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListUpdateResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListUpdateResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(HubSpotSDK::Crm::PublicObjectList)) }
        attr_reader :updated_list

        sig do
          params(updated_list: HubSpotSDK::Crm::PublicObjectList::OrHash).void
        end
        attr_writer :updated_list

        sig do
          params(
            updated_list: HubSpotSDK::Crm::PublicObjectList::OrHash
          ).returns(T.attached_class)
        end
        def self.new(updated_list: nil)
        end

        sig do
          override.returns({ updated_list: HubSpotSDK::Crm::PublicObjectList })
        end
        def to_hash
        end
      end
    end
  end
end
