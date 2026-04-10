# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListListFoldersParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListListFoldersParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :folder_id

        sig { params(folder_id: String).void }
        attr_writer :folder_id

        sig do
          params(
            folder_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(folder_id: nil, request_options: {})
        end

        sig do
          override.returns(
            { folder_id: String, request_options: HubSpotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
