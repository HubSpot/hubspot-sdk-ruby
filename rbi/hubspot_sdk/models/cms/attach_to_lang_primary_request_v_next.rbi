# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class AttachToLangPrimaryRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # ID of the object to add to a multi-language group.
        sig { returns(String) }
        attr_accessor :id

        # Designated language of the object to add to a multi-language group.
        sig do
          returns(
            HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol
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
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol
            )
          )
        end
        attr_reader :primary_language

        sig do
          params(
            primary_language:
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol
          ).void
        end
        attr_writer :primary_language

        sig do
          params(
            id: String,
            language:
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol,
            primary_id: String,
            primary_language:
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol
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
                HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol,
              primary_id: String,
              primary_language:
                HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Designated language of the object to add to a multi-language group.
        module Language
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Primary language of the multi-language group.
        module PrimaryLanguage
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::TaggedSymbol
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
