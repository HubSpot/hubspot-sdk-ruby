# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListRenameFolderParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListRenameFolderParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :folder_id

        sig { returns(T.nilable(String)) }
        attr_reader :new_folder_name

        sig { params(new_folder_name: String).void }
        attr_writer :new_folder_name

        sig do
          params(
            folder_id: String,
            new_folder_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(folder_id:, new_folder_name: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              folder_id: String,
              new_folder_name: String,
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
