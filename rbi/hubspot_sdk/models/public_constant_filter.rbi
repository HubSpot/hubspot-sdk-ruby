# typed: strong

module HubspotSDK
  module Models
    class PublicConstantFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicConstantFilter, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(HubspotSDK::PublicConstantFilter::FilterType::OrSymbol) }
      attr_accessor :filter_type

      sig { returns(T::Boolean) }
      attr_accessor :should_accept

      sig { returns(T.nilable(String)) }
      attr_reader :source

      sig { params(source: String).void }
      attr_writer :source

      sig do
        params(
          filter_type: HubspotSDK::PublicConstantFilter::FilterType::OrSymbol,
          should_accept: T::Boolean,
          source: String
        ).returns(T.attached_class)
      end
      def self.new(filter_type:, should_accept:, source: nil)
      end

      sig do
        override.returns(
          {
            filter_type: HubspotSDK::PublicConstantFilter::FilterType::OrSymbol,
            should_accept: T::Boolean,
            source: String
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicConstantFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONSTANT =
          T.let(
            :CONSTANT,
            HubspotSDK::PublicConstantFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicConstantFilter::FilterType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
