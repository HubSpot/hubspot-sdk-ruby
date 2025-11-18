# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Properties
        class GroupGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Properties::GroupGetParams,
                HubspotSDK::Internal::AnyHash
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
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(object_type:, locale: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                object_type: String,
                locale: String,
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
