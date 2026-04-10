# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponseMarketingEventPublicDefaultResponseV2WithErrors < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Timestamp that represents when the request finished processing
        sig { returns(Time) }
        attr_accessor :completed_at

        sig do
          returns(
            T::Array[
              HubSpotSDK::Marketing::MarketingEventPublicDefaultResponseV2
            ]
          )
        end
        attr_accessor :results

        # Timestamp that represents when the request started processing
        sig { returns(Time) }
        attr_accessor :started_at

        # The status of the request processing
        sig do
          returns(
            HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # Result of the request
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors that occurred during the processing
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # Timestamp that represents when the request was made
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[
                HubSpotSDK::Marketing::MarketingEventPublicDefaultResponseV2::OrHash
              ],
            started_at: Time,
            status:
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp that represents when the request finished processing
          completed_at:,
          results:,
          # Timestamp that represents when the request started processing
          started_at:,
          # The status of the request processing
          status:,
          errors: nil,
          # Result of the request
          links: nil,
          # The number of errors that occurred during the processing
          num_errors: nil,
          # Timestamp that represents when the request was made
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results:
                T::Array[
                  HubSpotSDK::Marketing::MarketingEventPublicDefaultResponseV2
                ],
              started_at: Time,
              status:
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status::OrSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the request processing
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2WithErrors::Status::TaggedSymbol
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
