# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EventDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EventDeleteParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_id_

        sig do
          params(
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(object_id_:, request_options: {})
        end

        sig do
          override.returns(
            { object_id_: String, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
