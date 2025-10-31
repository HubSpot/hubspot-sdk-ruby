# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIStaticPropertyFilterDataSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIStaticPropertyFilterDataSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :property_name

        sig { returns(String) }
        attr_accessor :static_value

        sig do
          returns(
            HubspotSDK::Automation::APIStaticPropertyFilterDataSource::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(HubspotSDK::Automation::APISort)) }
        attr_reader :sort_by

        sig { params(sort_by: HubspotSDK::Automation::APISort::OrHash).void }
        attr_writer :sort_by

        sig do
          params(
            name: String,
            property_name: String,
            static_value: String,
            type:
              HubspotSDK::Automation::APIStaticPropertyFilterDataSource::Type::OrSymbol,
            sort_by: HubspotSDK::Automation::APISort::OrHash
          ).returns(T.attached_class)
        end
        def self.new(name:, property_name:, static_value:, type:, sort_by: nil)
        end

        sig do
          override.returns(
            {
              name: String,
              property_name: String,
              static_value: String,
              type:
                HubspotSDK::Automation::APIStaticPropertyFilterDataSource::Type::OrSymbol,
              sort_by: HubspotSDK::Automation::APISort
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
                HubspotSDK::Automation::APIStaticPropertyFilterDataSource::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC_PROPERTY_FILTER =
            T.let(
              :STATIC_PROPERTY_FILTER,
              HubspotSDK::Automation::APIStaticPropertyFilterDataSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIStaticPropertyFilterDataSource::Type::TaggedSymbol
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
