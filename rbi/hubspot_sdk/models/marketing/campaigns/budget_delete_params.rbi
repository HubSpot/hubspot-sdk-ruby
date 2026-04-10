# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        class BudgetDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::Campaigns::BudgetDeleteParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :campaign_guid

          sig { returns(Integer) }
          attr_accessor :budget_id

          sig do
            params(
              campaign_guid: String,
              budget_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(campaign_guid:, budget_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                campaign_guid: String,
                budget_id: Integer,
                request_options: HubSpotSDK::RequestOptions
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
