# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AttachToLangPrimaryRequestVNext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of the object to add to a multi-language group.
        sig { returns(String) }
        attr_accessor :id

        # Designated language of the object to add to a multi-language group.
        sig do
          returns(
            HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol
          )
        end
        attr_accessor :language

        # ID of primary language object in multi-language group.
        sig { returns(String) }
        attr_accessor :primary_id

        # Primary language of the multi-language group.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol
            )
          )
        end
        attr_reader :primary_language

        sig do
          params(
            primary_language:
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol
          ).void
        end
        attr_writer :primary_language

        sig do
          params(
            id: String,
            language:
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol,
            primary_id: String,
            primary_language:
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the object to add to a multi-language group.
          id:,
          # Designated language of the object to add to a multi-language group.
          language:,
          # ID of primary language object in multi-language group.
          primary_id:,
          # Primary language of the multi-language group.
          primary_language: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              language:
                HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol,
              primary_id: String,
              primary_language:
                HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Designated language of the object to add to a multi-language group.
        module Language
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Primary language of the multi-language group.
        module PrimaryLanguage
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
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
