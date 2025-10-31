# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class TopLevelActions < HubspotSDK::Internal::Type::BaseModel
          # @!attribute secondary
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::ActionHookActionBody, HubspotSDK::Models::CRM::Extensions::IFrameActionBody>]
          required :secondary,
                   -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::CRM::Extensions::TopLevelActions::Secondary] }

          # @!attribute primary
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::ActionHookActionBody, HubspotSDK::Models::CRM::Extensions::IFrameActionBody, nil]
          optional :primary, union: -> { HubspotSDK::CRM::Extensions::TopLevelActions::Primary }

          # @!attribute settings
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::IFrameActionBody, nil]
          optional :settings, -> { HubspotSDK::CRM::Extensions::IFrameActionBody }

          # @!method initialize(secondary:, primary: nil, settings: nil)
          #   @param secondary [Array<HubspotSDK::Models::CRM::Extensions::ActionHookActionBody, HubspotSDK::Models::CRM::Extensions::IFrameActionBody>]
          #   @param primary [HubspotSDK::Models::CRM::Extensions::ActionHookActionBody, HubspotSDK::Models::CRM::Extensions::IFrameActionBody]
          #   @param settings [HubspotSDK::Models::CRM::Extensions::IFrameActionBody]

          module Secondary
            extend HubspotSDK::Internal::Type::Union

            variant -> { HubspotSDK::CRM::Extensions::ActionHookActionBody }

            variant -> { HubspotSDK::CRM::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubspotSDK::Models::CRM::Extensions::ActionHookActionBody, HubspotSDK::Models::CRM::Extensions::IFrameActionBody)]
          end

          # @see HubspotSDK::Models::CRM::Extensions::TopLevelActions#primary
          module Primary
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
