# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListMoveRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListMoveRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The Id of the list to move.
        sig { returns(String) }
        attr_accessor :list_id

        # The Id of folder to move the list to, the root folder is Id 0.
        sig { returns(String) }
        attr_accessor :new_folder_id

        sig do
          params(list_id: String, new_folder_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The Id of the list to move.
          list_id:,
          # The Id of folder to move the list to, the root folder is Id 0.
          new_folder_id:
        )
        end

        sig { override.returns({ list_id: String, new_folder_id: String }) }
        def to_hash
        end
      end
    end
  end
end
