# typed: strong

module HubspotSDK
  module Models
    module Settings
      class TaxRateListResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Models::Settings::TaxRateListResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Models::Settings::TaxRateListResponse::Result]
          )
        end
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Models::Settings::TaxRateListResponse::Result::OrHash
              ],
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[
                  HubspotSDK::Models::Settings::TaxRateListResponse::Result
                ],
              paging: HubspotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end

        class Result < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::Settings::TaxRateListResponse::Result,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T::Boolean) }
          attr_accessor :active

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :label

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :percentage_rate

          sig { returns(Time) }
          attr_accessor :updated_at

          sig do
            params(
              id: String,
              active: T::Boolean,
              created_at: Time,
              label: String,
              name: String,
              percentage_rate: Float,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            active:,
            created_at:,
            label:,
            name:,
            percentage_rate:,
            updated_at:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                active: T::Boolean,
                created_at: Time,
                label: String,
                name: String,
                percentage_rate: Float,
                updated_at: Time
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
