# typed: strong

module HubspotSDK
  module Models
    class PublicWebinarFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicWebinarFilter, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(HubspotSDK::PublicWebinarFilter::FilterType::OrSymbol) }
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(T.nilable(String)) }
      attr_reader :webinar_id

      sig { params(webinar_id: String).void }
      attr_writer :webinar_id

      sig do
        params(
          filter_type: HubspotSDK::PublicWebinarFilter::FilterType::OrSymbol,
          operator: String,
          webinar_id: String
        ).returns(T.attached_class)
      end
      def self.new(filter_type:, operator:, webinar_id: nil)
      end

      sig do
        override.returns(
          {
            filter_type: HubspotSDK::PublicWebinarFilter::FilterType::OrSymbol,
            operator: String,
            webinar_id: String
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicWebinarFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEBINAR =
          T.let(
            :WEBINAR,
            HubspotSDK::PublicWebinarFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicWebinarFilter::FilterType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
