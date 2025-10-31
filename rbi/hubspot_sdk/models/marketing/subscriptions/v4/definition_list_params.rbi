# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        module V4
          class DefinitionListParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Marketing::Subscriptions::V4::DefinitionListParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            # If you have the
            # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
            # include this parameter to filter results by business unit ID. The default
            # Account business unit will always use `0`.
            sig { returns(T.nilable(Integer)) }
            attr_reader :business_unit_id

            sig { params(business_unit_id: Integer).void }
            attr_writer :business_unit_id

            # Set to `true` to return subscription translations associated with each
            # definition.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :include_translations

            sig { params(include_translations: T::Boolean).void }
            attr_writer :include_translations

            sig do
              params(
                business_unit_id: Integer,
                include_translations: T::Boolean,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
              business_unit_id: nil,
              # Set to `true` to return subscription translations associated with each
              # definition.
              include_translations: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  business_unit_id: Integer,
                  include_translations: T::Boolean,
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
end
