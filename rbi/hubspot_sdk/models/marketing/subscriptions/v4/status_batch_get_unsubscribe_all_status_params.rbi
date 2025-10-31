# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        module V4
          class StatusBatchGetUnsubscribeAllStatusParams < HubspotSDK::Models::BatchInputString
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Marketing::Subscriptions::V4::StatusBatchGetUnsubscribeAllStatusParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            # The channel type for the subscription type. Currently, the only supported
            # channel type is `EMAIL`.
            sig { returns(HubspotSDK::BatchInputString::Channel::OrSymbol) }
            attr_accessor :channel

            # If you have the
            # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
            # include this parameter to filter results by business unit ID. The default
            # Account business unit will always use `0`.
            sig { returns(T.nilable(Integer)) }
            attr_reader :business_unit_id

            sig { params(business_unit_id: Integer).void }
            attr_writer :business_unit_id

            sig do
              params(
                channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
                business_unit_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The channel type for the subscription type. Currently, the only supported
              # channel type is `EMAIL`.
              channel:,
              # If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
              business_unit_id: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
                  business_unit_id: Integer,
                  request_options: HubspotSDK::RequestOptions
                }
              )
            end
            def to_hash
            end

            # The channel type for the subscription type. Currently, the only supported
            # channel type is `EMAIL`.
            module Channel
              extend HubspotSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, HubspotSDK::BatchInputString::Channel)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL =
                T.let(
                  :EMAIL,
                  HubspotSDK::BatchInputString::Channel::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[HubspotSDK::BatchInputString::Channel::TaggedSymbol]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
