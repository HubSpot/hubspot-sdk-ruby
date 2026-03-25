# typed: strong

module HubspotSDK
  module Models
    module BusinessUnits
      class BusinessUnitGetByUserIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::BusinessUnits::BusinessUnitGetByUserIDParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :name

        sig { params(name: T::Array[String]).void }
        attr_writer :name

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig do
          params(
            user_id: String,
            name: T::Array[String],
            properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(user_id:, name: nil, properties: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              user_id: String,
              name: T::Array[String],
              properties: T::Array[String],
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
