# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        class V4UpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Associations::V4UpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_type

          sig { returns(String) }
          attr_accessor :object_id_

          sig { returns(String) }
          attr_accessor :to_object_type

          sig { returns(T::Array[HubspotSDK::AssociationSpec]) }
          attr_accessor :body

          sig do
            params(
              object_type: String,
              object_id_: String,
              to_object_type: String,
              body: T::Array[HubspotSDK::AssociationSpec::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            object_type:,
            object_id_:,
            to_object_type:,
            body:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                object_type: String,
                object_id_: String,
                to_object_type: String,
                body: T::Array[HubspotSDK::AssociationSpec],
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
