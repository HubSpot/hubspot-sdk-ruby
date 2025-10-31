# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class IntegratorObjectResult < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute actions
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::ActionHookActionBody, HubspotSDK::Models::CRM::Extensions::IFrameActionBody>]
          required :actions,
                   -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::CRM::Extensions::IntegratorObjectResult::Action] }

          # @!attribute title
          #
          #   @return [String]
          required :title, String

          # @!attribute tokens
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::ObjectToken>]
          required :tokens, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::ObjectToken] }

          # @!attribute link_url
          #
          #   @return [String, nil]
          optional :link_url, String, api_name: :linkUrl

          # @!method initialize(id:, actions:, title:, tokens:, link_url: nil)
          #   @param id [String]
          #   @param actions [Array<HubspotSDK::Models::CRM::Extensions::ActionHookActionBody, HubspotSDK::Models::CRM::Extensions::IFrameActionBody>]
          #   @param title [String]
          #   @param tokens [Array<HubspotSDK::Models::CRM::Extensions::ObjectToken>]
          #   @param link_url [String]

          module Action
            extend HubspotSDK::Internal::Type::Union

            variant -> { HubspotSDK::CRM::Extensions::ActionHookActionBody }

            variant -> { HubspotSDK::CRM::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubspotSDK::Models::CRM::Extensions::ActionHookActionBody, HubspotSDK::Models::CRM::Extensions::IFrameActionBody)]
          end
        end
      end
    end
  end
end
