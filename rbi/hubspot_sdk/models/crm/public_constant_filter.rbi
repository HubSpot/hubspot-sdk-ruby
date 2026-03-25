# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicConstantFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicConstantFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the type of filter, which is (CONSTANT).
        sig do
          returns(HubspotSDK::Crm::PublicConstantFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # Indicates whether the filter should accept the condition.
        sig { returns(T::Boolean) }
        attr_accessor :should_accept

        # Defines the source of the constant filter.
        sig { returns(T.nilable(String)) }
        attr_reader :source

        sig { params(source: String).void }
        attr_writer :source

        sig do
          params(
            filter_type:
              HubspotSDK::Crm::PublicConstantFilter::FilterType::OrSymbol,
            should_accept: T::Boolean,
            source: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the type of filter, which is (CONSTANT).
          filter_type:,
          # Indicates whether the filter should accept the condition.
          should_accept:,
          # Defines the source of the constant filter.
          source: nil
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubspotSDK::Crm::PublicConstantFilter::FilterType::OrSymbol,
              should_accept: T::Boolean,
              source: String
            }
          )
        end
        def to_hash
        end

        # Specifies the type of filter, which is (CONSTANT).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicConstantFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSTANT =
            T.let(
              :CONSTANT,
              HubspotSDK::Crm::PublicConstantFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicConstantFilter::FilterType::TaggedSymbol
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
