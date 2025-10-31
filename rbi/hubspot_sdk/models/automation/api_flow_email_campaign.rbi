# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIFlowEmailCampaign < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIFlowEmailCampaign,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_campaign_id

        sig { returns(String) }
        attr_accessor :email_content_id

        sig { returns(String) }
        attr_accessor :flow_id

        sig do
          params(
            email_campaign_id: String,
            email_content_id: String,
            flow_id: String
          ).returns(T.attached_class)
        end
        def self.new(email_campaign_id:, email_content_id:, flow_id:)
        end

        sig do
          override.returns(
            {
              email_campaign_id: String,
              email_content_id: String,
              flow_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
