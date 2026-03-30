# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileDeleteParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig do
          params(
            file_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(file_id:, request_options: {})
        end

        sig do
          override.returns(
            { file_id: String, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
