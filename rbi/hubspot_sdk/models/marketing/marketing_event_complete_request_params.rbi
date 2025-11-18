# typed: strong

module HubspotSDK
  module Models
    MarketingEventCompleteRequestParams =
      Marketing::MarketingEventCompleteRequestParams

    module Marketing
      class MarketingEventCompleteRequestParams < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventCompleteRequestParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :end_date_time

        sig { returns(Time) }
        attr_accessor :start_date_time

        sig do
          params(end_date_time: Time, start_date_time: Time).returns(
            T.attached_class
          )
        end
        def self.new(end_date_time:, start_date_time:)
        end

        sig { override.returns({ end_date_time: Time, start_date_time: Time }) }
        def to_hash
        end
      end
    end
  end
end
