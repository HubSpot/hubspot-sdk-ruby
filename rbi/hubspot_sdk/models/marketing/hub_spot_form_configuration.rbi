# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class HubSpotFormConfiguration < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::HubSpotFormConfiguration,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether to add a reset link to the form. This removes any pre-populated content
        # on the form and creates a new contact on submission.
        sig { returns(T::Boolean) }
        attr_accessor :allow_link_to_reset_known_values

        # Whether the form can be archived.
        sig { returns(T::Boolean) }
        attr_accessor :archivable

        # Whether the form can be cloned.
        sig { returns(T::Boolean) }
        attr_accessor :cloneable

        # Whether to create a new contact when a form is submitted with an email address
        # that doesn’t match any in your existing contacts records.
        sig { returns(T::Boolean) }
        attr_accessor :create_new_contact_for_new_email

        # Whether the form can be edited.
        sig { returns(T::Boolean) }
        attr_accessor :editable

        # The language of the form.
        sig do
          returns(
            HubspotSDK::Marketing::HubSpotFormConfiguration::Language::OrSymbol
          )
        end
        attr_accessor :language

        # Whether to send a notification email to the contact owner when a submission is
        # received.
        sig { returns(T::Boolean) }
        attr_accessor :notify_contact_owner

        # The list of user IDs to receive a notification email when a submission is
        # received.
        sig { returns(T::Array[String]) }
        attr_accessor :notify_recipients

        # What should happen after the customer submits the form.
        sig { returns(HubspotSDK::Marketing::FormPostSubmitAction) }
        attr_reader :post_submit_action

        sig do
          params(
            post_submit_action:
              HubspotSDK::Marketing::FormPostSubmitAction::OrHash
          ).void
        end
        attr_writer :post_submit_action

        # Whether contact fields should pre-populate with known information when a contact
        # returns to your site.
        sig { returns(T::Boolean) }
        attr_accessor :pre_populate_known_values

        # Whether CAPTCHA (spam prevention) is enabled.
        sig { returns(T::Boolean) }
        attr_accessor :recaptcha_enabled

        sig do
          returns(T.nilable(T::Array[HubspotSDK::Marketing::LifecycleStage]))
        end
        attr_reader :lifecycle_stages

        sig do
          params(
            lifecycle_stages:
              T::Array[HubspotSDK::Marketing::LifecycleStage::OrHash]
          ).void
        end
        attr_writer :lifecycle_stages

        sig do
          params(
            allow_link_to_reset_known_values: T::Boolean,
            archivable: T::Boolean,
            cloneable: T::Boolean,
            create_new_contact_for_new_email: T::Boolean,
            editable: T::Boolean,
            language:
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::OrSymbol,
            notify_contact_owner: T::Boolean,
            notify_recipients: T::Array[String],
            post_submit_action:
              HubspotSDK::Marketing::FormPostSubmitAction::OrHash,
            pre_populate_known_values: T::Boolean,
            recaptcha_enabled: T::Boolean,
            lifecycle_stages:
              T::Array[HubspotSDK::Marketing::LifecycleStage::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to add a reset link to the form. This removes any pre-populated content
          # on the form and creates a new contact on submission.
          allow_link_to_reset_known_values:,
          # Whether the form can be archived.
          archivable:,
          # Whether the form can be cloned.
          cloneable:,
          # Whether to create a new contact when a form is submitted with an email address
          # that doesn’t match any in your existing contacts records.
          create_new_contact_for_new_email:,
          # Whether the form can be edited.
          editable:,
          # The language of the form.
          language:,
          # Whether to send a notification email to the contact owner when a submission is
          # received.
          notify_contact_owner:,
          # The list of user IDs to receive a notification email when a submission is
          # received.
          notify_recipients:,
          # What should happen after the customer submits the form.
          post_submit_action:,
          # Whether contact fields should pre-populate with known information when a contact
          # returns to your site.
          pre_populate_known_values:,
          # Whether CAPTCHA (spam prevention) is enabled.
          recaptcha_enabled:,
          lifecycle_stages: nil
        )
        end

        sig do
          override.returns(
            {
              allow_link_to_reset_known_values: T::Boolean,
              archivable: T::Boolean,
              cloneable: T::Boolean,
              create_new_contact_for_new_email: T::Boolean,
              editable: T::Boolean,
              language:
                HubspotSDK::Marketing::HubSpotFormConfiguration::Language::OrSymbol,
              notify_contact_owner: T::Boolean,
              notify_recipients: T::Array[String],
              post_submit_action: HubspotSDK::Marketing::FormPostSubmitAction,
              pre_populate_known_values: T::Boolean,
              recaptcha_enabled: T::Boolean,
              lifecycle_stages: T::Array[HubspotSDK::Marketing::LifecycleStage]
            }
          )
        end
        def to_hash
        end

        # The language of the form.
        module Language
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::HubSpotFormConfiguration::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AF =
            T.let(
              :af,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::HubSpotFormConfiguration::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
