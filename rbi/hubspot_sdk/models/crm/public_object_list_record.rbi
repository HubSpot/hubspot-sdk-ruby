# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicObjectListRecord < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicObjectListRecord,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the list containing the imported objects.
        sig { returns(String) }
        attr_accessor :list_id

        # The type of object contained in the list.
        sig { returns(String) }
        attr_accessor :object_type

        sig do
          params(list_id: String, object_type: String).returns(T.attached_class)
        end
        def self.new(
          # The ID of the list containing the imported objects.
          list_id:,
          # The type of object contained in the list.
          object_type:
        )
        end

        sig { override.returns({ list_id: String, object_type: String }) }
        def to_hash
        end
      end
    end
  end
end
