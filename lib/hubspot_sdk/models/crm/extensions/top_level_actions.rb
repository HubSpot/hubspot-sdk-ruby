# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class TopLevelActions < HubspotSDK::Internal::Type::BaseModel
          # @!attribute secondary
          #   Specifies a list of secondary actions for a card, each of which can be an action
          #   hook or an iframe.
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody>]
          required :secondary,
                   -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::Extensions::TopLevelActions::Secondary] }

          # @!attribute primary
          #   Defines the primary action for a card, which can be either an action hook or an
          #   iframe.
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody, nil]
          optional :primary, union: -> { HubspotSDK::Crm::Extensions::TopLevelActions::Primary }

          # @!attribute settings
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::IFrameActionBody, nil]
          optional :settings, -> { HubspotSDK::Crm::Extensions::IFrameActionBody }

          # @!method initialize(secondary:, primary: nil, settings: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::TopLevelActions} for more details.
          #
          #   @param secondary [Array<HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody>] Specifies a list of secondary actions for a card, each of which can be an action
          #
          #   @param primary [HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody] Defines the primary action for a card, which can be either an action hook or an
          #
          #   @param settings [HubspotSDK::Models::Crm::Extensions::IFrameActionBody]

          module Secondary
            extend HubspotSDK::Internal::Type::Union

            variant -> { HubspotSDK::Crm::Extensions::ActionHookActionBody }

            variant -> { HubspotSDK::Crm::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody)]
          end

          # Defines the primary action for a card, which can be either an action hook or an
          # iframe.
          #
          # @see HubspotSDK::Models::Crm::Extensions::TopLevelActions#primary
          module Primary
            extend HubspotSDK::Internal::Type::Union

            variant -> { HubspotSDK::Crm::Extensions::ActionHookActionBody }

            variant -> { HubspotSDK::Crm::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody)]
          end
        end
      end
    end
  end
end
