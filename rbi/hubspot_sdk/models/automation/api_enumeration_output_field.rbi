# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIEnumerationOutputField < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIEnumerationOutputField,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[String]) }
        attr_accessor :options

        sig do
          returns(
            HubspotSDK::Automation::APIEnumerationOutputField::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            name: String,
            options: T::Array[String],
            type:
              HubspotSDK::Automation::APIEnumerationOutputField::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(name:, options:, type:)
        end

        sig do
          override.returns(
            {
              name: String,
              options: T::Array[String],
              type:
                HubspotSDK::Automation::APIEnumerationOutputField::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIEnumerationOutputField::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENUMERATION =
            T.let(
              :ENUMERATION,
              HubspotSDK::Automation::APIEnumerationOutputField::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIEnumerationOutputField::Type::TaggedSymbol
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
