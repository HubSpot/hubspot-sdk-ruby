# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The active domain of the email.
        sig { returns(T.nilable(String)) }
        attr_reader :active_domain

        sig { params(active_domain: String).void }
        attr_writer :active_domain

        # Determines if the email is archived or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # The ID of the business unit associated with the email.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        # The ID of the campaign this email is associated to.
        sig { returns(T.nilable(String)) }
        attr_reader :campaign

        sig { params(campaign: String).void }
        attr_writer :campaign

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicEmailContent)) }
        attr_reader :content

        sig do
          params(
            content: HubSpotSDK::Marketing::PublicEmailContent::OrHash
          ).void
        end
        attr_writer :content

        # The ID of the feedback survey linked to the email.
        sig { returns(T.nilable(String)) }
        attr_reader :feedback_survey_id

        sig { params(feedback_survey_id: String).void }
        attr_writer :feedback_survey_id

        # The ID of the folder where the email will be stored.
        sig { returns(T.nilable(Integer)) }
        attr_reader :folder_id_v2

        sig { params(folder_id_v2: Integer).void }
        attr_writer :folder_id_v2

        sig do
          returns(T.nilable(HubSpotSDK::Marketing::PublicEmailFromDetails))
        end
        attr_reader :from

        sig do
          params(
            from: HubSpotSDK::Marketing::PublicEmailFromDetails::OrHash
          ).void
        end
        attr_writer :from

        # Determines whether the email send time should be randomized to avoid sending all
        # emails at the exact same time.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :jitter_send_time

        sig { params(jitter_send_time: T::Boolean).void }
        attr_writer :jitter_send_time

        # The language code for the email, such as 'en' for English.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Marketing::EmailCreateRequest::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              HubSpotSDK::Marketing::EmailCreateRequest::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # The name of the email, as displayed on the email dashboard.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The date and time the email is scheduled for, in ISO8601 representation. This is
        # only used in local time or scheduled emails.
        sig { returns(T.nilable(Time)) }
        attr_reader :publish_date

        sig { params(publish_date: Time).void }
        attr_writer :publish_date

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicRssEmailDetails)) }
        attr_reader :rss_data

        sig do
          params(
            rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails::OrHash
          ).void
        end
        attr_writer :rss_data

        # Determines whether the email will be sent immediately on publish.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_on_publish

        sig { params(send_on_publish: T::Boolean).void }
        attr_writer :send_on_publish

        # The email state.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Marketing::EmailCreateRequest::State::OrSymbol
            )
          )
        end
        attr_reader :state

        sig do
          params(
            state: HubSpotSDK::Marketing::EmailCreateRequest::State::OrSymbol
          ).void
        end
        attr_writer :state

        # The email subcategory.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol
            )
          )
        end
        attr_reader :subcategory

        sig do
          params(
            subcategory:
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol
          ).void
        end
        attr_writer :subcategory

        # The subject of the email.
        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        sig do
          returns(
            T.nilable(HubSpotSDK::Marketing::PublicEmailSubscriptionDetails)
          )
        end
        attr_reader :subscription_details

        sig do
          params(
            subscription_details:
              HubSpotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash
          ).void
        end
        attr_writer :subscription_details

        sig do
          returns(T.nilable(HubSpotSDK::Marketing::PublicEmailTestingDetails))
        end
        attr_reader :testing

        sig do
          params(
            testing: HubSpotSDK::Marketing::PublicEmailTestingDetails::OrHash
          ).void
        end
        attr_writer :testing

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicEmailToDetails)) }
        attr_reader :to

        sig do
          params(to: HubSpotSDK::Marketing::PublicEmailToDetails::OrHash).void
        end
        attr_writer :to

        sig do
          returns(T.nilable(HubSpotSDK::Marketing::PublicWebversionDetails))
        end
        attr_reader :webversion

        sig do
          params(
            webversion: HubSpotSDK::Marketing::PublicWebversionDetails::OrHash
          ).void
        end
        attr_writer :webversion

        sig do
          params(
            active_domain: String,
            archived: T::Boolean,
            business_unit_id: Integer,
            campaign: String,
            content: HubSpotSDK::Marketing::PublicEmailContent::OrHash,
            feedback_survey_id: String,
            folder_id_v2: Integer,
            from: HubSpotSDK::Marketing::PublicEmailFromDetails::OrHash,
            jitter_send_time: T::Boolean,
            language:
              HubSpotSDK::Marketing::EmailCreateRequest::Language::OrSymbol,
            name: String,
            publish_date: Time,
            rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails::OrHash,
            send_on_publish: T::Boolean,
            state: HubSpotSDK::Marketing::EmailCreateRequest::State::OrSymbol,
            subcategory:
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol,
            subject: String,
            subscription_details:
              HubSpotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash,
            testing: HubSpotSDK::Marketing::PublicEmailTestingDetails::OrHash,
            to: HubSpotSDK::Marketing::PublicEmailToDetails::OrHash,
            webversion: HubSpotSDK::Marketing::PublicWebversionDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The active domain of the email.
          active_domain: nil,
          # Determines if the email is archived or not.
          archived: nil,
          # The ID of the business unit associated with the email.
          business_unit_id: nil,
          # The ID of the campaign this email is associated to.
          campaign: nil,
          content: nil,
          # The ID of the feedback survey linked to the email.
          feedback_survey_id: nil,
          # The ID of the folder where the email will be stored.
          folder_id_v2: nil,
          from: nil,
          # Determines whether the email send time should be randomized to avoid sending all
          # emails at the exact same time.
          jitter_send_time: nil,
          # The language code for the email, such as 'en' for English.
          language: nil,
          # The name of the email, as displayed on the email dashboard.
          name: nil,
          # The date and time the email is scheduled for, in ISO8601 representation. This is
          # only used in local time or scheduled emails.
          publish_date: nil,
          rss_data: nil,
          # Determines whether the email will be sent immediately on publish.
          send_on_publish: nil,
          # The email state.
          state: nil,
          # The email subcategory.
          subcategory: nil,
          # The subject of the email.
          subject: nil,
          subscription_details: nil,
          testing: nil,
          to: nil,
          webversion: nil
        )
        end

        sig do
          override.returns(
            {
              active_domain: String,
              archived: T::Boolean,
              business_unit_id: Integer,
              campaign: String,
              content: HubSpotSDK::Marketing::PublicEmailContent,
              feedback_survey_id: String,
              folder_id_v2: Integer,
              from: HubSpotSDK::Marketing::PublicEmailFromDetails,
              jitter_send_time: T::Boolean,
              language:
                HubSpotSDK::Marketing::EmailCreateRequest::Language::OrSymbol,
              name: String,
              publish_date: Time,
              rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails,
              send_on_publish: T::Boolean,
              state: HubSpotSDK::Marketing::EmailCreateRequest::State::OrSymbol,
              subcategory:
                HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol,
              subject: String,
              subscription_details:
                HubSpotSDK::Marketing::PublicEmailSubscriptionDetails,
              testing: HubSpotSDK::Marketing::PublicEmailTestingDetails,
              to: HubSpotSDK::Marketing::PublicEmailToDetails,
              webversion: HubSpotSDK::Marketing::PublicWebversionDetails
            }
          )
        end
        def to_hash
        end

        # The language code for the email, such as 'en' for English.
        module Language
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Marketing::EmailCreateRequest::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The email state.
        module State
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Marketing::EmailCreateRequest::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AGENT_GENERATED =
            T.let(
              :AGENT_GENERATED,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED =
            T.let(
              :AUTOMATED,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_AB =
            T.let(
              :AUTOMATED_AB,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_AB_VARIANT =
            T.let(
              :AUTOMATED_AB_VARIANT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_DRAFT =
            T.let(
              :AUTOMATED_DRAFT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_DRAFT_AB =
            T.let(
              :AUTOMATED_DRAFT_AB,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_DRAFT_ABVARIANT =
            T.let(
              :AUTOMATED_DRAFT_ABVARIANT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM =
            T.let(
              :AUTOMATED_FOR_FORM,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_BUFFER =
            T.let(
              :AUTOMATED_FOR_FORM_BUFFER,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_DRAFT =
            T.let(
              :AUTOMATED_FOR_FORM_DRAFT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_LEGACY =
            T.let(
              :AUTOMATED_FOR_FORM_LEGACY,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_LOSER_ABVARIANT =
            T.let(
              :AUTOMATED_LOSER_ABVARIANT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_SENDING =
            T.let(
              :AUTOMATED_SENDING,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          BLOG_EMAIL_DRAFT =
            T.let(
              :BLOG_EMAIL_DRAFT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          BLOG_EMAIL_PUBLISHED =
            T.let(
              :BLOG_EMAIL_PUBLISHED,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          DRAFT =
            T.let(
              :DRAFT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          DRAFT_AB =
            T.let(
              :DRAFT_AB,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          DRAFT_AB_VARIANT =
            T.let(
              :DRAFT_AB_VARIANT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          LOSER_AB_VARIANT =
            T.let(
              :LOSER_AB_VARIANT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PAGE_STUB =
            T.let(
              :PAGE_STUB,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PRE_PROCESSING =
            T.let(
              :PRE_PROCESSING,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PUBLISHED =
            T.let(
              :PUBLISHED,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PUBLISHED_AB =
            T.let(
              :PUBLISHED_AB,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PUBLISHED_AB_VARIANT =
            T.let(
              :PUBLISHED_AB_VARIANT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PUBLISHED_OR_SCHEDULED =
            T.let(
              :PUBLISHED_OR_SCHEDULED,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          RSS_TO_EMAIL_DRAFT =
            T.let(
              :RSS_TO_EMAIL_DRAFT,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          RSS_TO_EMAIL_PUBLISHED =
            T.let(
              :RSS_TO_EMAIL_PUBLISHED,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :SCHEDULED,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          SCHEDULED_AB =
            T.let(
              :SCHEDULED_AB,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          SCHEDULED_OR_PUBLISHED =
            T.let(
              :SCHEDULED_OR_PUBLISHED,
              HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The email subcategory.
        module Subcategory
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::EmailCreateRequest::Subcategory
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AB_LOSER_VARIANT =
            T.let(
              :ab_loser_variant,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_LOSER_VARIANT_SITE_PAGE =
            T.let(
              :ab_loser_variant_site_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_MASTER =
            T.let(
              :ab_master,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_MASTER_SITE_PAGE =
            T.let(
              :ab_master_site_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_VARIANT =
            T.let(
              :ab_variant,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_VARIANT_SITE_PAGE =
            T.let(
              :ab_variant_site_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED =
            T.let(
              :automated,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_AB_MASTER =
            T.let(
              :automated_ab_master,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_AB_VARIANT =
            T.let(
              :automated_ab_variant,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_CRM =
            T.let(
              :automated_for_crm,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_CUSTOM_SURVEY =
            T.let(
              :automated_for_custom_survey,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_DEAL =
            T.let(
              :automated_for_deal,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FEEDBACK_CES =
            T.let(
              :automated_for_feedback_ces,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FEEDBACK_CUSTOM =
            T.let(
              :automated_for_feedback_custom,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FEEDBACK_NPS =
            T.let(
              :automated_for_feedback_nps,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FORM =
            T.let(
              :automated_for_form,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_BUFFER =
            T.let(
              :automated_for_form_buffer,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_DRAFT =
            T.let(
              :automated_for_form_draft,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_LEGACY =
            T.let(
              :automated_for_form_legacy,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_LEADFLOW =
            T.let(
              :automated_for_leadflow,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_TICKET =
            T.let(
              :automated_for_ticket,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BATCH =
            T.let(
              :batch,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_ARTICLE_INSTANCE_LAYOUT =
            T.let(
              :blog_article_instance_layout,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_ARTICLE_LISTING =
            T.let(
              :blog_article_listing,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_AUTHOR_DETAIL =
            T.let(
              :blog_author_detail,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_EMAIL =
            T.let(
              :blog_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_EMAIL_CHILD =
            T.let(
              :blog_email_child,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :case_study,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          CASE_STUDY_INSTANCE_LAYOUT =
            T.let(
              :case_study_instance_layout,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          CASE_STUDY_LISTING =
            T.let(
              :case_study_listing,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          DISCARDABLE_STUB =
            T.let(
              :discardable_stub,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          IMPORTED_BLOG_POST =
            T.let(
              :imported_blog_post,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_404_PAGE =
            T.let(
              :kb_404_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_ARTICLE_INSTANCE_LAYOUT =
            T.let(
              :kb_article_instance_layout,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_LISTING =
            T.let(
              :kb_listing,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_SEARCH_RESULTS =
            T.let(
              :kb_search_results,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_SUPPORT_FORM =
            T.let(
              :kb_support_form,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :landing_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          LEGACY_BLOG_POST =
            T.let(
              :legacy_blog_post,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          LEGACY_PAGE =
            T.let(
              :legacy_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          LOCALTIME =
            T.let(
              :localtime,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MANAGE_PREFERENCES_EMAIL =
            T.let(
              :manage_preferences_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MARKETING_SINGLE_SEND_API =
            T.let(
              :marketing_single_send_api,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_EMAIL_VERIFICATION =
            T.let(
              :membership_email_verification,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_FOLLOW_UP =
            T.let(
              :membership_follow_up,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_OTP_LOGIN =
            T.let(
              :membership_otp_login,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_RESET =
            T.let(
              :membership_password_reset,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_SAVED =
            T.let(
              :membership_password_saved,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_PASSWORDLESS_AUTH =
            T.let(
              :membership_passwordless_auth,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION =
            T.let(
              :membership_registration,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_FOLLOW_UP =
            T.let(
              :membership_registration_follow_up,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_VERIFICATION =
            T.let(
              :membership_verification,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          NORMAL_BLOG_POST =
            T.let(
              :normal_blog_post,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          OPTIN_EMAIL =
            T.let(
              :optin_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          OPTIN_FOLLOWUP_EMAIL =
            T.let(
              :optin_followup_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PAGE_INSTANCE_LAYOUT =
            T.let(
              :page_instance_layout,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PAGE_STUB =
            T.let(
              :page_stub,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PERFORMABLE_LANDING_PAGE =
            T.let(
              :performable_landing_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PERFORMABLE_LANDING_PAGE_CUTOVER =
            T.let(
              :performable_landing_page_cutover,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PODCAST_INSTANCE_LAYOUT =
            T.let(
              :podcast_instance_layout,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PODCAST_LISTING =
            T.let(
              :podcast_listing,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PORTAL_CONTENT =
            T.let(
              :portal_content,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          RESUBSCRIBE_CONFIRMATION_EMAIL =
            T.let(
              :resubscribe_confirmation_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          RESUBSCRIBE_EMAIL =
            T.let(
              :resubscribe_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          RSS_TO_EMAIL =
            T.let(
              :rss_to_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          RSS_TO_EMAIL_CHILD =
            T.let(
              :rss_to_email_child,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SCP_INSTANCE_LAYOUT_PAGE =
            T.let(
              :scp_instance_layout_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SCP_STATIC_PAGE =
            T.let(
              :scp_static_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SINGLE_SEND_API =
            T.let(
              :single_send_api,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :site_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SMTP_TOKEN =
            T.let(
              :smtp_token,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          STAGED_PAGE =
            T.let(
              :staged_page,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          TICKET_CLOSED_KICKBACK_EMAIL =
            T.let(
              :ticket_closed_kickback_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          TICKET_OPENED_KICKBACK_EMAIL =
            T.let(
              :ticket_opened_kickback_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          TICKET_PIPELINE_AUTOMATED =
            T.let(
              :ticket_pipeline_automated,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          UNSUBSCRIBE_CONFIRMATION_EMAIL =
            T.let(
              :unsubscribe_confirmation_email,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :web_interactive,
              HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
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
