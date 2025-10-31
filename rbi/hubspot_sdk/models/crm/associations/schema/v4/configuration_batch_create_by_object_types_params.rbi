# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          module V4
            class ConfigurationBatchCreateByObjectTypesParams < HubspotSDK::Models::CRM::Associations::Schema::BatchInputPublicAssociationDefinitionConfigurationCreateRequest
              extend HubspotSDK::Internal::Type::RequestParameters::Converter
              include HubspotSDK::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::CRM::Associations::Schema::V4::ConfigurationBatchCreateByObjectTypesParams,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :from_object_type

              sig do
                params(
                  from_object_type: String,
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(from_object_type:, request_options: {})
              end

              sig do
                override.returns(
                  {
                    from_object_type: String,
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
  end
end
