# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::ListGetParams, HubspotSDK::Internal::AnyHash)
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(list_id:, include_filters: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              list_id: String,
              include_filters: T::Boolean,
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
