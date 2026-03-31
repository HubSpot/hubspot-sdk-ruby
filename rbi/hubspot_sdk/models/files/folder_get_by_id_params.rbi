# typed: strong

module HubspotSDK
  module Models
    module Files
      class FolderGetByIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FolderGetByIDParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :folder_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig do
          params(
            folder_id: String,
            properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(folder_id:, properties: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              folder_id: String,
              properties: T::Array[String],
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
