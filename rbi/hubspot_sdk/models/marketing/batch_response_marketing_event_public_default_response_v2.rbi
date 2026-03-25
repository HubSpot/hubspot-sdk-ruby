# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchResponseMarketingEventPublicDefaultResponseV2 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Timestamp of when the request was processed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig do
          returns(
            T::Array[
              HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2
            ]
          )
        end
        attr_accessor :results

        # Timestamp of when the request started processing.
        sig { returns(Time) }
        attr_accessor :started_at

        # The status of the response.
        sig do
          returns(
            HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # Result object of the request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

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
                HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2::OrHash
              ],
            started_at: Time,
            status:
              HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp of when the request was processed.
          completed_at:,
          results:,
          # Timestamp of when the request started processing.
          started_at:,
          # The status of the response.
          status:,
          errors: nil,
          # Result object of the request.
          links: nil,
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
                  HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2
                ],
              started_at: Time,
              status:
                HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the response.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
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
