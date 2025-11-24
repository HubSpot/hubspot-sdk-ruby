# typed: strong

module HubspotSDK
  module Models
    module Automation
      class MeetingSettingsResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::MeetingSettingsResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Automation::MeetingSettingsResponse::Criteria::TaggedSymbol
          )
        end
        attr_accessor :criteria

        sig do
          returns(
            HubspotSDK::Automation::MeetingSettingsResponse::SellingStrategy::TaggedSymbol
          )
        end
        attr_accessor :selling_strategy

        sig do
          params(
            criteria:
              HubspotSDK::Automation::MeetingSettingsResponse::Criteria::OrSymbol,
            selling_strategy:
              HubspotSDK::Automation::MeetingSettingsResponse::SellingStrategy::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(criteria:, selling_strategy:)
        end

        sig do
          override.returns(
            {
              criteria:
                HubspotSDK::Automation::MeetingSettingsResponse::Criteria::TaggedSymbol,
              selling_strategy:
                HubspotSDK::Automation::MeetingSettingsResponse::SellingStrategy::TaggedSymbol
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
                HubspotSDK::Automation::MeetingSettingsResponse::Criteria
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              HubspotSDK::Automation::MeetingSettingsResponse::Criteria::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              HubspotSDK::Automation::MeetingSettingsResponse::Criteria::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::MeetingSettingsResponse::Criteria::TaggedSymbol
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
                HubspotSDK::Automation::MeetingSettingsResponse::SellingStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_BASED =
            T.let(
              :ACCOUNT_BASED,
              HubspotSDK::Automation::MeetingSettingsResponse::SellingStrategy::TaggedSymbol
            )
          LEAD_BASED =
            T.let(
              :LEAD_BASED,
              HubspotSDK::Automation::MeetingSettingsResponse::SellingStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::MeetingSettingsResponse::SellingStrategy::TaggedSymbol
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
