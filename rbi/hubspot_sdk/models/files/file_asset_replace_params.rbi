# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileAssetReplaceParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileAssetReplaceParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig { returns(T.nilable(String)) }
        attr_reader :charset_hunch

        sig { params(charset_hunch: String).void }
        attr_writer :charset_hunch

        sig { returns(T.nilable(HubspotSDK::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: HubspotSDK::Internal::FileInput).void }
        attr_writer :file

        sig { returns(T.nilable(String)) }
        attr_reader :options

        sig { params(options: String).void }
        attr_writer :options

        sig do
          params(
            file_id: String,
            charset_hunch: String,
            file: HubspotSDK::Internal::FileInput,
            options: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          file_id:,
          charset_hunch: nil,
          file: nil,
          options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              file_id: String,
              charset_hunch: String,
              file: HubspotSDK::Internal::FileInput,
              options: String,
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
