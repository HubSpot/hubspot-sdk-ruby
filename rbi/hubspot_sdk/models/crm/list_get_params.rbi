# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Crm::ListGetParams, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :list_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_filters

        sig { params(include_filters: T::Boolean).void }
        attr_writer :include_filters

        sig do
          params(
            list_id: String,
            include_filters: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(list_id:, include_filters: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              list_id: String,
              include_filters: T::Boolean,
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
