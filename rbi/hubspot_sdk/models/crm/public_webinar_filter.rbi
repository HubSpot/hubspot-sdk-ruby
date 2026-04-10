# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicWebinarFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicWebinarFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates the type of filter, (WEBINAR).
        sig do
          returns(HubSpotSDK::Crm::PublicWebinarFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # Specifies the operation to be performed by the filter (HAS_WEBINAR_REGISTRATION,
        # NOT_HAS_WEBINAR_REGISTRATION, HAS_WEBINAR_ATTENDANCE,
        # NOT_HAS_WEBINAR_ATTENDANCE).
        sig { returns(String) }
        attr_accessor :operator

        # The ID of the webinar associated with the filter.
        sig { returns(T.nilable(String)) }
        attr_reader :webinar_id

        sig { params(webinar_id: String).void }
        attr_writer :webinar_id

        sig do
          params(
            filter_type:
              HubSpotSDK::Crm::PublicWebinarFilter::FilterType::OrSymbol,
            operator: String,
            webinar_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the type of filter, (WEBINAR).
          filter_type:,
          # Specifies the operation to be performed by the filter (HAS_WEBINAR_REGISTRATION,
          # NOT_HAS_WEBINAR_REGISTRATION, HAS_WEBINAR_ATTENDANCE,
          # NOT_HAS_WEBINAR_ATTENDANCE).
          operator:,
          # The ID of the webinar associated with the filter.
          webinar_id: nil
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubSpotSDK::Crm::PublicWebinarFilter::FilterType::OrSymbol,
              operator: String,
              webinar_id: String
            }
          )
        end
        def to_hash
        end

        # Indicates the type of filter, (WEBINAR).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicWebinarFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEBINAR =
            T.let(
              :WEBINAR,
              HubSpotSDK::Crm::PublicWebinarFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicWebinarFilter::FilterType::TaggedSymbol
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
