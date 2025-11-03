# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class TopLevelActions < HubspotSDK::Internal::Type::BaseModel
          # @!attribute secondary
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody>]
          required :secondary,
                   -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::Extensions::TopLevelActions::Secondary] }

          # @!attribute primary
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody, nil]
          optional :primary, union: -> { HubspotSDK::Crm::Extensions::TopLevelActions::Primary }

          # @!attribute settings
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::IFrameActionBody, nil]
          optional :settings, -> { HubspotSDK::Crm::Extensions::IFrameActionBody }

          # @!method initialize(secondary:, primary: nil, settings: nil)
          #   @param secondary [Array<HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody>]
          #   @param primary [HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody]
          #   @param settings [HubspotSDK::Models::Crm::Extensions::IFrameActionBody]

          module Secondary
            extend HubspotSDK::Internal::Type::Union

            variant -> { HubspotSDK::Crm::Extensions::ActionHookActionBody }

            variant -> { HubspotSDK::Crm::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody)]
          end

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
