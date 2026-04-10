# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class TopLevelActions < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute secondary
          #   Specifies a list of secondary actions for a card, each of which can be an action
          #   hook or an iframe.
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody>]
          required :secondary,
                   -> { HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Crm::Extensions::TopLevelActions::Secondary] }

          # @!attribute primary
          #   Defines the primary action for a card, which can be either an action hook or an
          #   iframe.
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody, nil]
          optional :primary, union: -> { HubSpotSDK::Crm::Extensions::TopLevelActions::Primary }

          # @!attribute settings
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::IFrameActionBody, nil]
          optional :settings, -> { HubSpotSDK::Crm::Extensions::IFrameActionBody }

          # @!method initialize(secondary:, primary: nil, settings: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::TopLevelActions} for more details.
          #
          #   @param secondary [Array<HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody>] Specifies a list of secondary actions for a card, each of which can be an action
          #
          #   @param primary [HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody] Defines the primary action for a card, which can be either an action hook or an
          #
          #   @param settings [HubSpotSDK::Models::Crm::Extensions::IFrameActionBody]

          module Secondary
            extend HubSpotSDK::Internal::Type::Union

            variant -> { HubSpotSDK::Crm::Extensions::ActionHookActionBody }

            variant -> { HubSpotSDK::Crm::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody)]
          end

          # Defines the primary action for a card, which can be either an action hook or an
          # iframe.
          #
          # @see HubSpotSDK::Models::Crm::Extensions::TopLevelActions#primary
          module Primary
            extend HubSpotSDK::Internal::Type::Union

            variant -> { HubSpotSDK::Crm::Extensions::ActionHookActionBody }

            variant -> { HubSpotSDK::Crm::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody)]
          end
        end
      end
    end
  end
end
