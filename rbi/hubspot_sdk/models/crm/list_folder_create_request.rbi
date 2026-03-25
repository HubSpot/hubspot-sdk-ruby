# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListFolderCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListFolderCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of the folder to be created.
        sig { returns(String) }
        attr_accessor :name

        # The folder this should be created in, if not specified will be created in the
        # root folder 0.
        sig { returns(T.nilable(String)) }
        attr_reader :parent_folder_id

        sig { params(parent_folder_id: String).void }
        attr_writer :parent_folder_id

        sig do
          params(name: String, parent_folder_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The name of the folder to be created.
          name:,
          # The folder this should be created in, if not specified will be created in the
          # root folder 0.
          parent_folder_id: nil
        )
        end

        sig { override.returns({ name: String, parent_folder_id: String }) }
        def to_hash
        end
      end
    end
  end
end
