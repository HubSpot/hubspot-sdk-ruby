# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class TaskUpdateParams < HubspotSDK::Models::Crm::SimplePublicObjectInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::TaskUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The name of a property whose values are unique for this object
          sig { returns(T.nilable(String)) }
          attr_reader :id_property

          sig { params(id_property: String).void }
          attr_writer :id_property

          sig do
            params(
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of a property whose values are unique for this object
            id_property: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
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
