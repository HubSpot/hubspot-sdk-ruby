# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SourceCodeValidateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::SourceCodeValidateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :environment

        sig { returns(String) }
        attr_accessor :path

        sig { returns(T.nilable(HubspotSDK::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: HubspotSDK::Internal::FileInput).void }
        attr_writer :file

        sig do
          params(
            environment: String,
            path: String,
            file: HubspotSDK::Internal::FileInput,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(environment:, path:, file: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              environment: String,
              path: String,
              file: HubspotSDK::Internal::FileInput,
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
