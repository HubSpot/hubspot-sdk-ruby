# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Properties
        class BatchGetParams < HubSpotSDK::Models::BatchReadInputPropertyName
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Properties::BatchGetParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_type

          sig { returns(T.nilable(String)) }
          attr_reader :locale

          sig { params(locale: String).void }
          attr_writer :locale

          sig do
            params(
              object_type: String,
              locale: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(object_type:, locale: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                object_type: String,
                locale: String,
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
end
