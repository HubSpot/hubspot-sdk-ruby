# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailCreateRequest,
              HubspotSDK::Internal::AnyHash
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

        sig { returns(T.nilable(HubspotSDK::Marketing::PublicEmailContent)) }
        attr_reader :content

        sig do
          params(
            content: HubspotSDK::Marketing::PublicEmailContent::OrHash
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
          returns(T.nilable(HubspotSDK::Marketing::PublicEmailFromDetails))
        end
        attr_reader :from

        sig do
          params(
            from: HubspotSDK::Marketing::PublicEmailFromDetails::OrHash
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
              HubspotSDK::Marketing::EmailCreateRequest::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              HubspotSDK::Marketing::EmailCreateRequest::Language::OrSymbol
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

        sig { returns(T.nilable(HubspotSDK::Marketing::PublicRssEmailDetails)) }
        attr_reader :rss_data

        sig do
          params(
            rss_data: HubspotSDK::Marketing::PublicRssEmailDetails::OrHash
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
              HubspotSDK::Marketing::EmailCreateRequest::State::OrSymbol
            )
          )
        end
        attr_reader :state

        sig do
          params(
            state: HubspotSDK::Marketing::EmailCreateRequest::State::OrSymbol
          ).void
        end
        attr_writer :state

        # The email subcategory.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol
            )
          )
        end
        attr_reader :subcategory

        sig do
          params(
            subcategory:
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol
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
            T.nilable(HubspotSDK::Marketing::PublicEmailSubscriptionDetails)
          )
        end
        attr_reader :subscription_details

        sig do
          params(
            subscription_details:
              HubspotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash
          ).void
        end
        attr_writer :subscription_details

        sig do
          returns(T.nilable(HubspotSDK::Marketing::PublicEmailTestingDetails))
        end
        attr_reader :testing

        sig do
          params(
            testing: HubspotSDK::Marketing::PublicEmailTestingDetails::OrHash
          ).void
        end
        attr_writer :testing

        sig { returns(T.nilable(HubspotSDK::Marketing::PublicEmailToDetails)) }
        attr_reader :to

        sig do
          params(to: HubspotSDK::Marketing::PublicEmailToDetails::OrHash).void
        end
        attr_writer :to

        sig do
          returns(T.nilable(HubspotSDK::Marketing::PublicWebversionDetails))
        end
        attr_reader :webversion

        sig do
          params(
            webversion: HubspotSDK::Marketing::PublicWebversionDetails::OrHash
          ).void
        end
        attr_writer :webversion

        sig do
          params(
            active_domain: String,
            archived: T::Boolean,
            business_unit_id: Integer,
            campaign: String,
            content: HubspotSDK::Marketing::PublicEmailContent::OrHash,
            feedback_survey_id: String,
            folder_id_v2: Integer,
            from: HubspotSDK::Marketing::PublicEmailFromDetails::OrHash,
            jitter_send_time: T::Boolean,
            language:
              HubspotSDK::Marketing::EmailCreateRequest::Language::OrSymbol,
            name: String,
            publish_date: Time,
            rss_data: HubspotSDK::Marketing::PublicRssEmailDetails::OrHash,
            send_on_publish: T::Boolean,
            state: HubspotSDK::Marketing::EmailCreateRequest::State::OrSymbol,
            subcategory:
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol,
            subject: String,
            subscription_details:
              HubspotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash,
            testing: HubspotSDK::Marketing::PublicEmailTestingDetails::OrHash,
            to: HubspotSDK::Marketing::PublicEmailToDetails::OrHash,
            webversion: HubspotSDK::Marketing::PublicWebversionDetails::OrHash
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
              content: HubspotSDK::Marketing::PublicEmailContent,
              feedback_survey_id: String,
              folder_id_v2: Integer,
              from: HubspotSDK::Marketing::PublicEmailFromDetails,
              jitter_send_time: T::Boolean,
              language:
                HubspotSDK::Marketing::EmailCreateRequest::Language::OrSymbol,
              name: String,
              publish_date: Time,
              rss_data: HubspotSDK::Marketing::PublicRssEmailDetails,
              send_on_publish: T::Boolean,
              state: HubspotSDK::Marketing::EmailCreateRequest::State::OrSymbol,
              subcategory:
                HubspotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol,
              subject: String,
              subscription_details:
                HubspotSDK::Marketing::PublicEmailSubscriptionDetails,
              testing: HubspotSDK::Marketing::PublicEmailTestingDetails,
              to: HubspotSDK::Marketing::PublicEmailToDetails,
              webversion: HubspotSDK::Marketing::PublicWebversionDetails
            }
          )
        end
        def to_hash
        end

        # The language code for the email, such as 'en' for English.
        module Language
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::EmailCreateRequest::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::EmailCreateRequest::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The email state.
        module State
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::EmailCreateRequest::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AGENT_GENERATED =
            T.let(
              :AGENT_GENERATED,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED =
            T.let(
              :AUTOMATED,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_AB =
            T.let(
              :AUTOMATED_AB,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_AB_VARIANT =
            T.let(
              :AUTOMATED_AB_VARIANT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_DRAFT =
            T.let(
              :AUTOMATED_DRAFT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_DRAFT_AB =
            T.let(
              :AUTOMATED_DRAFT_AB,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_DRAFT_ABVARIANT =
            T.let(
              :AUTOMATED_DRAFT_ABVARIANT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM =
            T.let(
              :AUTOMATED_FOR_FORM,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_BUFFER =
            T.let(
              :AUTOMATED_FOR_FORM_BUFFER,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_DRAFT =
            T.let(
              :AUTOMATED_FOR_FORM_DRAFT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_LEGACY =
            T.let(
              :AUTOMATED_FOR_FORM_LEGACY,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_LOSER_ABVARIANT =
            T.let(
              :AUTOMATED_LOSER_ABVARIANT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          AUTOMATED_SENDING =
            T.let(
              :AUTOMATED_SENDING,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          BLOG_EMAIL_DRAFT =
            T.let(
              :BLOG_EMAIL_DRAFT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          BLOG_EMAIL_PUBLISHED =
            T.let(
              :BLOG_EMAIL_PUBLISHED,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          DRAFT =
            T.let(
              :DRAFT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          DRAFT_AB =
            T.let(
              :DRAFT_AB,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          DRAFT_AB_VARIANT =
            T.let(
              :DRAFT_AB_VARIANT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          LOSER_AB_VARIANT =
            T.let(
              :LOSER_AB_VARIANT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PAGE_STUB =
            T.let(
              :PAGE_STUB,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PRE_PROCESSING =
            T.let(
              :PRE_PROCESSING,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PUBLISHED =
            T.let(
              :PUBLISHED,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PUBLISHED_AB =
            T.let(
              :PUBLISHED_AB,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PUBLISHED_AB_VARIANT =
            T.let(
              :PUBLISHED_AB_VARIANT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          PUBLISHED_OR_SCHEDULED =
            T.let(
              :PUBLISHED_OR_SCHEDULED,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          RSS_TO_EMAIL_DRAFT =
            T.let(
              :RSS_TO_EMAIL_DRAFT,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          RSS_TO_EMAIL_PUBLISHED =
            T.let(
              :RSS_TO_EMAIL_PUBLISHED,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :SCHEDULED,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          SCHEDULED_AB =
            T.let(
              :SCHEDULED_AB,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )
          SCHEDULED_OR_PUBLISHED =
            T.let(
              :SCHEDULED_OR_PUBLISHED,
              HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::EmailCreateRequest::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The email subcategory.
        module Subcategory
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::EmailCreateRequest::Subcategory
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AB_LOSER_VARIANT =
            T.let(
              :ab_loser_variant,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_LOSER_VARIANT_SITE_PAGE =
            T.let(
              :ab_loser_variant_site_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_MASTER =
            T.let(
              :ab_master,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_MASTER_SITE_PAGE =
            T.let(
              :ab_master_site_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_VARIANT =
            T.let(
              :ab_variant,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AB_VARIANT_SITE_PAGE =
            T.let(
              :ab_variant_site_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED =
            T.let(
              :automated,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_AB_MASTER =
            T.let(
              :automated_ab_master,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_AB_VARIANT =
            T.let(
              :automated_ab_variant,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_CRM =
            T.let(
              :automated_for_crm,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_CUSTOM_SURVEY =
            T.let(
              :automated_for_custom_survey,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_DEAL =
            T.let(
              :automated_for_deal,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FEEDBACK_CES =
            T.let(
              :automated_for_feedback_ces,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FEEDBACK_CUSTOM =
            T.let(
              :automated_for_feedback_custom,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FEEDBACK_NPS =
            T.let(
              :automated_for_feedback_nps,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FORM =
            T.let(
              :automated_for_form,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_BUFFER =
            T.let(
              :automated_for_form_buffer,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_DRAFT =
            T.let(
              :automated_for_form_draft,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_LEGACY =
            T.let(
              :automated_for_form_legacy,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_LEADFLOW =
            T.let(
              :automated_for_leadflow,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          AUTOMATED_FOR_TICKET =
            T.let(
              :automated_for_ticket,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BATCH =
            T.let(
              :batch,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_ARTICLE_INSTANCE_LAYOUT =
            T.let(
              :blog_article_instance_layout,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_ARTICLE_LISTING =
            T.let(
              :blog_article_listing,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_AUTHOR_DETAIL =
            T.let(
              :blog_author_detail,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_EMAIL =
            T.let(
              :blog_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          BLOG_EMAIL_CHILD =
            T.let(
              :blog_email_child,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :case_study,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          CASE_STUDY_INSTANCE_LAYOUT =
            T.let(
              :case_study_instance_layout,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          CASE_STUDY_LISTING =
            T.let(
              :case_study_listing,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          DISCARDABLE_STUB =
            T.let(
              :discardable_stub,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          IMPORTED_BLOG_POST =
            T.let(
              :imported_blog_post,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_404_PAGE =
            T.let(
              :kb_404_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_ARTICLE_INSTANCE_LAYOUT =
            T.let(
              :kb_article_instance_layout,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_LISTING =
            T.let(
              :kb_listing,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_SEARCH_RESULTS =
            T.let(
              :kb_search_results,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          KB_SUPPORT_FORM =
            T.let(
              :kb_support_form,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :landing_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          LEGACY_BLOG_POST =
            T.let(
              :legacy_blog_post,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          LEGACY_PAGE =
            T.let(
              :legacy_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          LOCALTIME =
            T.let(
              :localtime,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MANAGE_PREFERENCES_EMAIL =
            T.let(
              :manage_preferences_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MARKETING_SINGLE_SEND_API =
            T.let(
              :marketing_single_send_api,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_EMAIL_VERIFICATION =
            T.let(
              :membership_email_verification,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_FOLLOW_UP =
            T.let(
              :membership_follow_up,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_OTP_LOGIN =
            T.let(
              :membership_otp_login,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_RESET =
            T.let(
              :membership_password_reset,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_SAVED =
            T.let(
              :membership_password_saved,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_PASSWORDLESS_AUTH =
            T.let(
              :membership_passwordless_auth,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION =
            T.let(
              :membership_registration,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_FOLLOW_UP =
            T.let(
              :membership_registration_follow_up,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          MEMBERSHIP_VERIFICATION =
            T.let(
              :membership_verification,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          NORMAL_BLOG_POST =
            T.let(
              :normal_blog_post,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          OPTIN_EMAIL =
            T.let(
              :optin_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          OPTIN_FOLLOWUP_EMAIL =
            T.let(
              :optin_followup_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PAGE_INSTANCE_LAYOUT =
            T.let(
              :page_instance_layout,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PAGE_STUB =
            T.let(
              :page_stub,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PERFORMABLE_LANDING_PAGE =
            T.let(
              :performable_landing_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PERFORMABLE_LANDING_PAGE_CUTOVER =
            T.let(
              :performable_landing_page_cutover,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PODCAST_INSTANCE_LAYOUT =
            T.let(
              :podcast_instance_layout,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PODCAST_LISTING =
            T.let(
              :podcast_listing,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          PORTAL_CONTENT =
            T.let(
              :portal_content,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          RESUBSCRIBE_CONFIRMATION_EMAIL =
            T.let(
              :resubscribe_confirmation_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          RESUBSCRIBE_EMAIL =
            T.let(
              :resubscribe_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          RSS_TO_EMAIL =
            T.let(
              :rss_to_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          RSS_TO_EMAIL_CHILD =
            T.let(
              :rss_to_email_child,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SCP_INSTANCE_LAYOUT_PAGE =
            T.let(
              :scp_instance_layout_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SCP_STATIC_PAGE =
            T.let(
              :scp_static_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SINGLE_SEND_API =
            T.let(
              :single_send_api,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :site_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          SMTP_TOKEN =
            T.let(
              :smtp_token,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          STAGED_PAGE =
            T.let(
              :staged_page,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          TICKET_CLOSED_KICKBACK_EMAIL =
            T.let(
              :ticket_closed_kickback_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          TICKET_OPENED_KICKBACK_EMAIL =
            T.let(
              :ticket_opened_kickback_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          TICKET_PIPELINE_AUTOMATED =
            T.let(
              :ticket_pipeline_automated,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          UNSUBSCRIBE_CONFIRMATION_EMAIL =
            T.let(
              :unsubscribe_confirmation_email,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :web_interactive,
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::EmailCreateRequest::Subcategory::TaggedSymbol
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
