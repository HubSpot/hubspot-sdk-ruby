# typed: strong

module HubspotSDK
  module Models
    module Automation
      class EmailSettingsResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::EmailSettingsResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Automation::EmailSettingsResponse::Criteria::TaggedSymbol
          )
        end
        attr_accessor :criteria

        sig do
          returns(
            HubspotSDK::Automation::EmailSettingsResponse::SellingStrategy::TaggedSymbol
          )
        end
        attr_accessor :selling_strategy

        sig do
          params(
            criteria:
              HubspotSDK::Automation::EmailSettingsResponse::Criteria::OrSymbol,
            selling_strategy:
              HubspotSDK::Automation::EmailSettingsResponse::SellingStrategy::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(criteria:, selling_strategy:)
        end

        sig do
          override.returns(
            {
              criteria:
                HubspotSDK::Automation::EmailSettingsResponse::Criteria::TaggedSymbol,
              selling_strategy:
                HubspotSDK::Automation::EmailSettingsResponse::SellingStrategy::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Criteria
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::EmailSettingsResponse::Criteria
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              HubspotSDK::Automation::EmailSettingsResponse::Criteria::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              HubspotSDK::Automation::EmailSettingsResponse::Criteria::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::EmailSettingsResponse::Criteria::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module SellingStrategy
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::EmailSettingsResponse::SellingStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEAD_BASED =
            T.let(
              :LEAD_BASED,
              HubspotSDK::Automation::EmailSettingsResponse::SellingStrategy::TaggedSymbol
            )
          ACCOUNT_BASED =
            T.let(
              :ACCOUNT_BASED,
              HubspotSDK::Automation::EmailSettingsResponse::SellingStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::EmailSettingsResponse::SellingStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
