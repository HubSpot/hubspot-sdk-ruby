# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class DisplayOption < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::DisplayOption,
                HubspotSDK::Internal::AnyHash
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
            returns(HubspotSDK::Crm::Extensions::DisplayOption::Type::OrSymbol)
          end
          attr_accessor :type

          sig do
            params(
              label: String,
              name: String,
              type: HubspotSDK::Crm::Extensions::DisplayOption::Type::OrSymbol
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
                type: HubspotSDK::Crm::Extensions::DisplayOption::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The type of status.
          module Type
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, HubspotSDK::Crm::Extensions::DisplayOption::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DANGER =
              T.let(
                :DANGER,
                HubspotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )
            DEFAULT =
              T.let(
                :DEFAULT,
                HubspotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )
            INFO =
              T.let(
                :INFO,
                HubspotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )
            SUCCESS =
              T.let(
                :SUCCESS,
                HubspotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )
            WARNING =
              T.let(
                :WARNING,
                HubspotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::DisplayOption::Type::TaggedSymbol
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
