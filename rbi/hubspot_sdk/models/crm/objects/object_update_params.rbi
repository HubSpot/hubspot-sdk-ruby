# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class ObjectUpdateParams < HubspotSDK::Models::CRM::SimplePublicObjectInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::ObjectUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_type

          # The name of a property whose values are unique for this object
          sig { returns(T.nilable(String)) }
          attr_reader :id_property

          sig { params(id_property: String).void }
          attr_writer :id_property

          sig do
            params(
              object_type: String,
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            object_type:,
            # The name of a property whose values are unique for this object
            id_property: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                object_type: String,
                id_property: String,
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
