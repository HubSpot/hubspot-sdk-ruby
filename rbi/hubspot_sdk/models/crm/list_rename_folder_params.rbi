# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListRenameFolderParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListRenameFolderParams,
              HubspotSDK::Internal::AnyHash
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(folder_id:, new_folder_name: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              folder_id: String,
              new_folder_name: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
