# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponseMarketingEventPublicDefaultResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Timestamp of when the request was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig do
          returns(
            T::Array[HubSpotSDK::Marketing::MarketingEventPublicDefaultResponse]
          )
        end
        attr_accessor :results

        # Timestamp of when the request started processing.
        sig { returns(Time) }
        attr_accessor :started_at

        # Status of the response.
        sig do
          returns(
            HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # Result of the request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors that occurred during the request.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # Timestamp of when the request was sent.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[
                HubSpotSDK::Marketing::MarketingEventPublicDefaultResponse::OrHash
              ],
            started_at: Time,
            status:
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp of when the request was completed.
          completed_at:,
          results:,
          # Timestamp of when the request started processing.
          started_at:,
          # Status of the response.
          status:,
          errors: nil,
          # Result of the request.
          links: nil,
          # The number of errors that occurred during the request.
          num_errors: nil,
          # Timestamp of when the request was sent.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results:
                T::Array[
                  HubSpotSDK::Marketing::MarketingEventPublicDefaultResponse
                ],
              started_at: Time,
              status:
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status::TaggedSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # Status of the response.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status::TaggedSymbol
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
