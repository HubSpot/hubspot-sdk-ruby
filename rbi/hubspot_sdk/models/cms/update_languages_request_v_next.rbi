# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class UpdateLanguagesRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Map of object IDs to associated languages of object in the multi-language group.
        sig do
          returns(
            T::Hash[
              Symbol,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::OrSymbol
            ]
          )
        end
        attr_accessor :languages

        # ID of the primary object in the multi-language group.
        sig { returns(String) }
        attr_accessor :primary_id

        sig do
          params(
            languages:
              T::Hash[
                Symbol,
                HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::OrSymbol
              ],
            primary_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Map of object IDs to associated languages of object in the multi-language group.
          languages:,
          # ID of the primary object in the multi-language group.
          primary_id:
        )
        end

        sig do
          override.returns(
            {
              languages:
                T::Hash[
                  Symbol,
                  HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::OrSymbol
                ],
              primary_id: String
            }
          )
        end
        def to_hash
        end

        module Language
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::TaggedSymbol
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
