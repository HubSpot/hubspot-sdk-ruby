# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A flag indicating whether or not the response object list definitions should
        # include a filter branch definition. By default, object list definitions will not
        # have their filter branch definitions included in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_filters

        sig { params(include_filters: T::Boolean).void }
        attr_writer :include_filters

        # The **ILS IDs** of the lists to fetch.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :list_ids

        sig { params(list_ids: T::Array[String]).void }
        attr_writer :list_ids

        sig do
          params(
            include_filters: T::Boolean,
            list_ids: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A flag indicating whether or not the response object list definitions should
          # include a filter branch definition. By default, object list definitions will not
          # have their filter branch definitions included in the response.
          include_filters: nil,
          # The **ILS IDs** of the lists to fetch.
          list_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              include_filters: T::Boolean,
              list_ids: T::Array[String],
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
