# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Lists
        class FolderGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Lists::FolderGetParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The Id of the folder to retrieve.
          sig { returns(T.nilable(String)) }
          attr_reader :folder_id

          sig { params(folder_id: String).void }
          attr_writer :folder_id

          sig do
            params(
              folder_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The Id of the folder to retrieve.
            folder_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { folder_id: String, request_options: HubspotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
