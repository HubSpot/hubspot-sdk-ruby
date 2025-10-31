# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Lists
        class MappingGetIDMappingParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Lists::MappingGetIDMappingParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The legacy list id from lists v1 API.
          sig { returns(T.nilable(String)) }
          attr_reader :legacy_list_id

          sig { params(legacy_list_id: String).void }
          attr_writer :legacy_list_id

          sig do
            params(
              legacy_list_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The legacy list id from lists v1 API.
            legacy_list_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                legacy_list_id: String,
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
