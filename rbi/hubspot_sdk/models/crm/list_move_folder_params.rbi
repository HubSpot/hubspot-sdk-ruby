# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListMoveFolderParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListMoveFolderParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :folder_id

        sig { returns(String) }
        attr_accessor :new_parent_folder_id

        sig do
          params(
            folder_id: String,
            new_parent_folder_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(folder_id:, new_parent_folder_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              folder_id: String,
              new_parent_folder_id: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
