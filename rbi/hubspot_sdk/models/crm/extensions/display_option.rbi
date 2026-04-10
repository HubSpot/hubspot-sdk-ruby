# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class DisplayOption < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::DisplayOption,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The text that will be displayed to users for this option.
          sig { returns(String) }
          attr_accessor :label

          # JSON-friendly unique name for option.
          sig { returns(String) }
          attr_accessor :name

          # The type of status.
          sig do
            returns(HubSpotSDK::Crm::Extensions::DisplayOption::Type::OrSymbol)
          end
          attr_accessor :type

          sig do
            params(
              label: String,
              name: String,
              type: HubSpotSDK::Crm::Extensions::DisplayOption::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The text that will be displayed to users for this option.
            label:,
            # JSON-friendly unique name for option.
            name:,
            # The type of status.
            type:
          )
          end

          sig do
            override.returns(
              {
                label: String,
                name: String,
                type: HubSpotSDK::Crm::Extensions::DisplayOption::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The type of status.
          module Type
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, HubSpotSDK::Crm::Extensions::DisplayOption::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DANGER =
              T.let(
                :DANGER,
                HubSpotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )
            DEFAULT =
              T.let(
                :DEFAULT,
                HubSpotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )
            INFO =
              T.let(
                :INFO,
                HubSpotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )
            SUCCESS =
              T.let(
                :SUCCESS,
                HubSpotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )
            WARNING =
              T.let(
                :WARNING,
                HubSpotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
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
end
