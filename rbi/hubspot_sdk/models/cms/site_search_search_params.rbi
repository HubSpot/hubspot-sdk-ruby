# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class SiteSearchSearchParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::SiteSearchSearchParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :analytics

        sig { params(analytics: T::Boolean).void }
        attr_writer :analytics

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :autocomplete

        sig { params(autocomplete: T::Boolean).void }
        attr_writer :autocomplete

        sig { returns(T.nilable(Float)) }
        attr_reader :boost_limit

        sig { params(boost_limit: Float).void }
        attr_writer :boost_limit

        sig { returns(T.nilable(String)) }
        attr_reader :boost_recent

        sig { params(boost_recent: String).void }
        attr_writer :boost_recent

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :domain

        sig { params(domain: T::Array[String]).void }
        attr_writer :domain

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :group_id

        sig { params(group_id: T::Array[Integer]).void }
        attr_writer :group_id

        sig { returns(T.nilable(String)) }
        attr_reader :hubdb_query

        sig { params(hubdb_query: String).void }
        attr_writer :hubdb_query

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::OrSymbol
          ).void
        end
        attr_writer :language

        sig do
          returns(
            T.nilable(HubSpotSDK::Cms::SiteSearchSearchParams::Length::OrSymbol)
          )
        end
        attr_reader :length

        sig do
          params(
            length: HubSpotSDK::Cms::SiteSearchSearchParams::Length::OrSymbol
          ).void
        end
        attr_writer :length

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :match_prefix

        sig { params(match_prefix: T::Boolean).void }
        attr_writer :match_prefix

        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :path_prefix

        sig { params(path_prefix: T::Array[String]).void }
        attr_writer :path_prefix

        sig { returns(T.nilable(Float)) }
        attr_reader :popularity_boost

        sig { params(popularity_boost: Float).void }
        attr_writer :popularity_boost

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :property

        sig { params(property: T::Array[String]).void }
        attr_writer :property

        sig { returns(T.nilable(String)) }
        attr_reader :q

        sig { params(q: String).void }
        attr_writer :q

        sig { returns(T.nilable(Integer)) }
        attr_reader :table_id

        sig { params(table_id: Integer).void }
        attr_writer :table_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :type

        sig { params(type: T::Array[String]).void }
        attr_writer :type

        sig do
          returns(
            T.nilable(
              T::Array[HubSpotSDK::Cms::SiteSearchSearchParams::Type::OrSymbol]
            )
          )
        end
        attr_reader :types

        sig do
          params(
            types:
              T::Array[HubSpotSDK::Cms::SiteSearchSearchParams::Type::OrSymbol]
          ).void
        end
        attr_writer :types

        sig do
          params(
            analytics: T::Boolean,
            autocomplete: T::Boolean,
            boost_limit: Float,
            boost_recent: String,
            domain: T::Array[String],
            group_id: T::Array[Integer],
            hubdb_query: String,
            language:
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::OrSymbol,
            length: HubSpotSDK::Cms::SiteSearchSearchParams::Length::OrSymbol,
            limit: Integer,
            match_prefix: T::Boolean,
            offset: Integer,
            path_prefix: T::Array[String],
            popularity_boost: Float,
            property: T::Array[String],
            q: String,
            table_id: Integer,
            type: T::Array[String],
            types:
              T::Array[HubSpotSDK::Cms::SiteSearchSearchParams::Type::OrSymbol],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          analytics: nil,
          autocomplete: nil,
          boost_limit: nil,
          boost_recent: nil,
          domain: nil,
          group_id: nil,
          hubdb_query: nil,
          language: nil,
          length: nil,
          # The maximum number of results to display per page.
          limit: nil,
          match_prefix: nil,
          offset: nil,
          path_prefix: nil,
          popularity_boost: nil,
          property: nil,
          q: nil,
          table_id: nil,
          type: nil,
          types: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              analytics: T::Boolean,
              autocomplete: T::Boolean,
              boost_limit: Float,
              boost_recent: String,
              domain: T::Array[String],
              group_id: T::Array[Integer],
              hubdb_query: String,
              language:
                HubSpotSDK::Cms::SiteSearchSearchParams::Language::OrSymbol,
              length: HubSpotSDK::Cms::SiteSearchSearchParams::Length::OrSymbol,
              limit: Integer,
              match_prefix: T::Boolean,
              offset: Integer,
              path_prefix: T::Array[String],
              popularity_boost: Float,
              property: T::Array[String],
              q: String,
              table_id: Integer,
              type: T::Array[String],
              types:
                T::Array[
                  HubSpotSDK::Cms::SiteSearchSearchParams::Type::OrSymbol
                ],
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Language
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::SiteSearchSearchParams::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::SiteSearchSearchParams::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Length
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::SiteSearchSearchParams::Length)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LONG =
            T.let(
              :LONG,
              HubSpotSDK::Cms::SiteSearchSearchParams::Length::TaggedSymbol
            )
          SHORT =
            T.let(
              :SHORT,
              HubSpotSDK::Cms::SiteSearchSearchParams::Length::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::SiteSearchSearchParams::Length::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::SiteSearchSearchParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubSpotSDK::Cms::SiteSearchSearchParams::Type::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubSpotSDK::Cms::SiteSearchSearchParams::Type::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubSpotSDK::Cms::SiteSearchSearchParams::Type::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubSpotSDK::Cms::SiteSearchSearchParams::Type::TaggedSymbol
            )
          LISTING_PAGE =
            T.let(
              :LISTING_PAGE,
              HubSpotSDK::Cms::SiteSearchSearchParams::Type::TaggedSymbol
            )
          STRUCTURED_CONTENT =
            T.let(
              :STRUCTURED_CONTENT,
              HubSpotSDK::Cms::SiteSearchSearchParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::SiteSearchSearchParams::Type::TaggedSymbol
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
