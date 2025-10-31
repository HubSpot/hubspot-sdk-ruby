# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ListUpdateNameParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::ListUpdateNameParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A flag indicating whether or not the response object list definition should
        # include a filter branch definition. By default, object list definitions will not
        # have their filter branch definitions included in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_filters

        sig { params(include_filters: T::Boolean).void }
        attr_writer :include_filters

        # The name to update the list to.
        sig { returns(T.nilable(String)) }
        attr_reader :list_name

        sig { params(list_name: String).void }
        attr_writer :list_name

        sig do
          params(
            include_filters: T::Boolean,
            list_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A flag indicating whether or not the response object list definition should
          # include a filter branch definition. By default, object list definitions will not
          # have their filter branch definitions included in the response.
          include_filters: nil,
          # The name to update the list to.
          list_name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              include_filters: T::Boolean,
              list_name: String,
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
