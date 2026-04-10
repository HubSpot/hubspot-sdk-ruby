# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicEmailSubscriptionFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicEmailSubscriptionFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :accepted_statuses

        # Indicates the type of filter (EMAIL_SUBSCRIPTION).
        sig do
          returns(
            HubSpotSDK::Crm::PublicEmailSubscriptionFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        sig { returns(T::Array[String]) }
        attr_accessor :subscription_ids

        # The type of subscription related to the filter (PORTAL, BRAND, SUBSCRIPTION,
        # HARDBOUNCE, SPAMREPORT).
        sig { returns(T.nilable(String)) }
        attr_reader :subscription_type

        sig { params(subscription_type: String).void }
        attr_writer :subscription_type

        sig do
          params(
            accepted_statuses: T::Array[String],
            filter_type:
              HubSpotSDK::Crm::PublicEmailSubscriptionFilter::FilterType::OrSymbol,
            subscription_ids: T::Array[String],
            subscription_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          accepted_statuses:,
          # Indicates the type of filter (EMAIL_SUBSCRIPTION).
          filter_type:,
          subscription_ids:,
          # The type of subscription related to the filter (PORTAL, BRAND, SUBSCRIPTION,
          # HARDBOUNCE, SPAMREPORT).
          subscription_type: nil
        )
        end

        sig do
          override.returns(
            {
              accepted_statuses: T::Array[String],
              filter_type:
                HubSpotSDK::Crm::PublicEmailSubscriptionFilter::FilterType::OrSymbol,
              subscription_ids: T::Array[String],
              subscription_type: String
            }
          )
        end
        def to_hash
        end

        # Indicates the type of filter (EMAIL_SUBSCRIPTION).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicEmailSubscriptionFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_SUBSCRIPTION =
            T.let(
              :EMAIL_SUBSCRIPTION,
              HubSpotSDK::Crm::PublicEmailSubscriptionFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicEmailSubscriptionFilter::FilterType::TaggedSymbol
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
