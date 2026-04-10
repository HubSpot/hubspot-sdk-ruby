# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListListParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_filters

        sig { params(include_filters: T::Boolean).void }
        attr_writer :include_filters

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :list_ids

        sig { params(list_ids: T::Array[String]).void }
        attr_writer :list_ids

        sig do
          params(
            include_filters: T::Boolean,
            list_ids: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(include_filters: nil, list_ids: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              include_filters: T::Boolean,
              list_ids: T::Array[String],
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
