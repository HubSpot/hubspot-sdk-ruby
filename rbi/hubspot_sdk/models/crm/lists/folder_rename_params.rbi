# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Lists
        class FolderRenameParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Lists::FolderRenameParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The new name of the folder.
          sig { returns(T.nilable(String)) }
          attr_reader :new_folder_name

          sig { params(new_folder_name: String).void }
          attr_writer :new_folder_name

          sig do
            params(
              new_folder_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The new name of the folder.
            new_folder_name: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
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
end
