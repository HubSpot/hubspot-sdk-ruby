# typed: strong

module HubspotSDK
  module Models
    module Account
      class APIUsage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Account::APIUsage, HubspotSDK::Internal::AnyHash)
          end

        # Indicates when the cache was last updated.
        sig { returns(Time) }
        attr_accessor :collected_at

        # How many API calls an account has made for the current day.
        sig { returns(Integer) }
        attr_accessor :current_usage

        # Status of fetching the information, including if the data came from the cache.
        sig do
          returns(HubspotSDK::Account::APIUsage::FetchStatus::TaggedSymbol)
        end
        attr_accessor :fetch_status

        # Name of the limit type.
        sig { returns(String) }
        attr_accessor :name

        # Limits by which a single integration can consume the HubSpot public APIs.
        sig { returns(Integer) }
        attr_accessor :usage_limit

        # Time that the limit will reset.
        sig { returns(T.nilable(Time)) }
        attr_reader :resets_at

        sig { params(resets_at: Time).void }
        attr_writer :resets_at

        # API usage and limits information for a HubSpot account.
        sig do
          params(
            collected_at: Time,
            current_usage: Integer,
            fetch_status: HubspotSDK::Account::APIUsage::FetchStatus::OrSymbol,
            name: String,
            usage_limit: Integer,
            resets_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates when the cache was last updated.
          collected_at:,
          # How many API calls an account has made for the current day.
          current_usage:,
          # Status of fetching the information, including if the data came from the cache.
          fetch_status:,
          # Name of the limit type.
          name:,
          # Limits by which a single integration can consume the HubSpot public APIs.
          usage_limit:,
          # Time that the limit will reset.
          resets_at: nil
        )
        end

        sig do
          override.returns(
            {
              collected_at: Time,
              current_usage: Integer,
              fetch_status:
                HubspotSDK::Account::APIUsage::FetchStatus::TaggedSymbol,
              name: String,
              usage_limit: Integer,
              resets_at: Time
            }
          )
        end
        def to_hash
        end

        # Status of fetching the information, including if the data came from the cache.
        module FetchStatus
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Account::APIUsage::FetchStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUCCESS =
            T.let(
              :SUCCESS,
              HubspotSDK::Account::APIUsage::FetchStatus::TaggedSymbol
            )
          TIMEOUT =
            T.let(
              :TIMEOUT,
              HubspotSDK::Account::APIUsage::FetchStatus::TaggedSymbol
            )
          FAILURE =
            T.let(
              :FAILURE,
              HubspotSDK::Account::APIUsage::FetchStatus::TaggedSymbol
            )
          CACHED =
            T.let(
              :CACHED,
              HubspotSDK::Account::APIUsage::FetchStatus::TaggedSymbol
            )
          NOTFOUND =
            T.let(
              :NOTFOUND,
              HubspotSDK::Account::APIUsage::FetchStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Account::APIUsage::FetchStatus::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
