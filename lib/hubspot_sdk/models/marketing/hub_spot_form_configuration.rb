# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class HubSpotFormConfiguration < HubspotSDK::Internal::Type::BaseModel
        # @!attribute allow_link_to_reset_known_values
        #   Whether to add a reset link to the form. This removes any pre-populated content
        #   on the form and creates a new contact on submission.
        #
        #   @return [Boolean]
        required :allow_link_to_reset_known_values,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :allowLinkToResetKnownValues

        # @!attribute archivable
        #   Whether the form can be archived.
        #
        #   @return [Boolean]
        required :archivable, HubspotSDK::Internal::Type::Boolean

        # @!attribute cloneable
        #   Whether the form can be cloned.
        #
        #   @return [Boolean]
        required :cloneable, HubspotSDK::Internal::Type::Boolean

        # @!attribute create_new_contact_for_new_email
        #   Whether to create a new contact when a form is submitted with an email address
        #   that doesn’t match any in your existing contacts records.
        #
        #   @return [Boolean]
        required :create_new_contact_for_new_email,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :createNewContactForNewEmail

        # @!attribute editable
        #   Whether the form can be edited.
        #
        #   @return [Boolean]
        required :editable, HubspotSDK::Internal::Type::Boolean

        # @!attribute language
        #   The language of the form.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::HubSpotFormConfiguration::Language]
        required :language, enum: -> { HubspotSDK::Marketing::HubSpotFormConfiguration::Language }

        # @!attribute notify_contact_owner
        #   Whether to send a notification email to the contact owner when a submission is
        #   received.
        #
        #   @return [Boolean]
        required :notify_contact_owner, HubspotSDK::Internal::Type::Boolean, api_name: :notifyContactOwner

        # @!attribute notify_recipients
        #   The list of user IDs to receive a notification email when a submission is
        #   received.
        #
        #   @return [Array<String>]
        required :notify_recipients, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :notifyRecipients

        # @!attribute post_submit_action
        #   What should happen after the customer submits the form.
        #
        #   @return [HubspotSDK::Models::Marketing::FormPostSubmitAction]
        required :post_submit_action,
                 -> { HubspotSDK::Marketing::FormPostSubmitAction },
                 api_name: :postSubmitAction

        # @!attribute pre_populate_known_values
        #   Whether contact fields should pre-populate with known information when a contact
        #   returns to your site.
        #
        #   @return [Boolean]
        required :pre_populate_known_values,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :prePopulateKnownValues

        # @!attribute recaptcha_enabled
        #   Whether CAPTCHA (spam prevention) is enabled.
        #
        #   @return [Boolean]
        required :recaptcha_enabled, HubspotSDK::Internal::Type::Boolean, api_name: :recaptchaEnabled

        # @!attribute lifecycle_stages
        #
        #   @return [Array<HubspotSDK::Models::Marketing::LifecycleStage>, nil]
        optional :lifecycle_stages,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::LifecycleStage] },
                 api_name: :lifecycleStages

        # @!method initialize(allow_link_to_reset_known_values:, archivable:, cloneable:, create_new_contact_for_new_email:, editable:, language:, notify_contact_owner:, notify_recipients:, post_submit_action:, pre_populate_known_values:, recaptcha_enabled:, lifecycle_stages: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::HubSpotFormConfiguration} for more details.
        #
        #   @param allow_link_to_reset_known_values [Boolean] Whether to add a reset link to the form. This removes any pre-populated content
        #
        #   @param archivable [Boolean] Whether the form can be archived.
        #
        #   @param cloneable [Boolean] Whether the form can be cloned.
        #
        #   @param create_new_contact_for_new_email [Boolean] Whether to create a new contact when a form is submitted with an email address t
        #
        #   @param editable [Boolean] Whether the form can be edited.
        #
        #   @param language [Symbol, HubspotSDK::Models::Marketing::HubSpotFormConfiguration::Language] The language of the form.
        #
        #   @param notify_contact_owner [Boolean] Whether to send a notification email to the contact owner when a submission is r
        #
        #   @param notify_recipients [Array<String>] The list of user IDs to receive a notification email when a submission is receiv
        #
        #   @param post_submit_action [HubspotSDK::Models::Marketing::FormPostSubmitAction] What should happen after the customer submits the form.
        #
        #   @param pre_populate_known_values [Boolean] Whether contact fields should pre-populate with known information when a contact
        #
        #   @param recaptcha_enabled [Boolean] Whether CAPTCHA (spam prevention) is enabled.
        #
        #   @param lifecycle_stages [Array<HubspotSDK::Models::Marketing::LifecycleStage>]

        # The language of the form.
        #
        # @see HubspotSDK::Models::Marketing::HubSpotFormConfiguration#language
        module Language
          extend HubspotSDK::Internal::Type::Enum

          AF = :af
          AR_EG = :"ar-eg"
          BG = :bg
          BN = :bn
          CA_ES = :"ca-es"
          CS = :cs
          DA = :da
          DE = :de
          EL = :el
          EN = :en
          ES = :es
          ES_MX = :"es-mx"
          FI = :fi
          FR = :fr
          FR_CA = :"fr-ca"
          HE_IL = :"he-il"
          HR = :hr
          HU = :hu
          ID = :id
          IT = :it
          JA = :ja
          KO = :ko
          LT = :lt
          MS = :ms
          NL = :nl
          NO_NO = :"no-no"
          PL = :pl
          PT = :pt
          PT_BR = :"pt-br"
          RO = :ro
          RU = :ru
          SK = :sk
          SL = :sl
          SV = :sv
          TH = :th
          TL = :tl
          TR = :tr
          UK = :uk
          VI = :vi
          ZH_CN = :"zh-cn"
          ZH_HK = :"zh-hk"
          ZH_TW = :"zh-tw"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
