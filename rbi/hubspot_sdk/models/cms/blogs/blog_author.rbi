# typed: strong

module HubspotSDK
  module Models
    module Cms
      BlogAuthor = Blogs::BlogAuthor

      module Blogs
        class BlogAuthor < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BlogAuthor,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The unique ID of the Blog Author.
          sig { returns(String) }
          attr_accessor :id

          # URL to the blog author's avatar, if supplying a custom one.
          sig { returns(String) }
          attr_accessor :avatar

          # A short biography of the blog author.
          sig { returns(String) }
          attr_accessor :bio

          # The timestamp (ISO8601 format) when this Blog Author was created.
          sig { returns(Time) }
          attr_accessor :created

          # The timestamp (ISO8601 format) when this Blog Author was deleted.
          sig { returns(Time) }
          attr_accessor :deleted_at

          # The full name of the Blog Author to be displayed.
          sig { returns(String) }
          attr_accessor :display_name

          # Email address of the Blog Author.
          sig { returns(String) }
          attr_accessor :email

          # URL to the Blog Author's Facebook page.
          sig { returns(String) }
          attr_accessor :facebook

          # The full, unabbreviated name of the blog author, typically their first and last
          # name combined.
          sig { returns(String) }
          attr_accessor :full_name

          # The explicitly defined ISO 639 language code of the blog author.
          sig do
            returns(HubspotSDK::Cms::Blogs::BlogAuthor::Language::OrSymbol)
          end
          attr_accessor :language

          # URL to the blog author's LinkedIn page.
          sig { returns(String) }
          attr_accessor :linkedin

          # The name field for the blog author. (This appears to be a shorter or alternative
          # name field compared to fullName.)
          sig { returns(String) }
          attr_accessor :name

          # A URL-friendly identifier for the blog author that can be used to reference the
          # author in URLs. Typically generated from the author's name and contains
          # lowercase letters, hyphens, and underscores.
          sig { returns(String) }
          attr_accessor :slug

          # ID of the primary blog author this object was translated from.
          sig { returns(Integer) }
          attr_accessor :translated_from_id

          # URL or username of the Twitter account associated with the Blog Author. This
          # will be normalized into the Twitter url for said user.
          sig { returns(String) }
          attr_accessor :twitter

          # The timestamp (ISO8601 format) when this Blog Author was updated.
          sig { returns(Time) }
          attr_accessor :updated

          # URL to the website of the Blog Author.
          sig { returns(String) }
          attr_accessor :website

          sig do
            params(
              id: String,
              avatar: String,
              bio: String,
              created: Time,
              deleted_at: Time,
              display_name: String,
              email: String,
              facebook: String,
              full_name: String,
              language: HubspotSDK::Cms::Blogs::BlogAuthor::Language::OrSymbol,
              linkedin: String,
              name: String,
              slug: String,
              translated_from_id: Integer,
              twitter: String,
              updated: Time,
              website: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique ID of the Blog Author.
            id:,
            # URL to the blog author's avatar, if supplying a custom one.
            avatar:,
            # A short biography of the blog author.
            bio:,
            # The timestamp (ISO8601 format) when this Blog Author was created.
            created:,
            # The timestamp (ISO8601 format) when this Blog Author was deleted.
            deleted_at:,
            # The full name of the Blog Author to be displayed.
            display_name:,
            # Email address of the Blog Author.
            email:,
            # URL to the Blog Author's Facebook page.
            facebook:,
            # The full, unabbreviated name of the blog author, typically their first and last
            # name combined.
            full_name:,
            # The explicitly defined ISO 639 language code of the blog author.
            language:,
            # URL to the blog author's LinkedIn page.
            linkedin:,
            # The name field for the blog author. (This appears to be a shorter or alternative
            # name field compared to fullName.)
            name:,
            # A URL-friendly identifier for the blog author that can be used to reference the
            # author in URLs. Typically generated from the author's name and contains
            # lowercase letters, hyphens, and underscores.
            slug:,
            # ID of the primary blog author this object was translated from.
            translated_from_id:,
            # URL or username of the Twitter account associated with the Blog Author. This
            # will be normalized into the Twitter url for said user.
            twitter:,
            # The timestamp (ISO8601 format) when this Blog Author was updated.
            updated:,
            # URL to the website of the Blog Author.
            website:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                avatar: String,
                bio: String,
                created: Time,
                deleted_at: Time,
                display_name: String,
                email: String,
                facebook: String,
                full_name: String,
                language:
                  HubspotSDK::Cms::Blogs::BlogAuthor::Language::OrSymbol,
                linkedin: String,
                name: String,
                slug: String,
                translated_from_id: Integer,
                twitter: String,
                updated: Time,
                website: String
              }
            )
          end
          def to_hash
          end

          # The explicitly defined ISO 639 language code of the blog author.
          module Language
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, HubspotSDK::Cms::Blogs::BlogAuthor::Language)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AA =
              T.let(
                :aa,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AB =
              T.let(
                :ab,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AE =
              T.let(
                :ae,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AF =
              T.let(
                :af,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AF_NA =
              T.let(
                :"af-na",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AF_ZA =
              T.let(
                :"af-za",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AGQ =
              T.let(
                :agq,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AGQ_CM =
              T.let(
                :"agq-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AK =
              T.let(
                :ak,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AK_GH =
              T.let(
                :"ak-gh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AM =
              T.let(
                :am,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AM_ET =
              T.let(
                :"am-et",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AN =
              T.let(
                :an,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ANN =
              T.let(
                :ann,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ANN_NG =
              T.let(
                :"ann-ng",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR =
              T.let(
                :ar,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_001 =
              T.let(
                :"ar-001",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_AE =
              T.let(
                :"ar-ae",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_BH =
              T.let(
                :"ar-bh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_DJ =
              T.let(
                :"ar-dj",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_DZ =
              T.let(
                :"ar-dz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_EG =
              T.let(
                :"ar-eg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_EH =
              T.let(
                :"ar-eh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_ER =
              T.let(
                :"ar-er",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_IL =
              T.let(
                :"ar-il",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_IQ =
              T.let(
                :"ar-iq",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_JO =
              T.let(
                :"ar-jo",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_KM =
              T.let(
                :"ar-km",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_KW =
              T.let(
                :"ar-kw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_LB =
              T.let(
                :"ar-lb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_LY =
              T.let(
                :"ar-ly",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_MA =
              T.let(
                :"ar-ma",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_MR =
              T.let(
                :"ar-mr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_OM =
              T.let(
                :"ar-om",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_PS =
              T.let(
                :"ar-ps",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_QA =
              T.let(
                :"ar-qa",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_SA =
              T.let(
                :"ar-sa",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_SD =
              T.let(
                :"ar-sd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_SO =
              T.let(
                :"ar-so",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_SS =
              T.let(
                :"ar-ss",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_SY =
              T.let(
                :"ar-sy",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_TD =
              T.let(
                :"ar-td",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_TN =
              T.let(
                :"ar-tn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AR_YE =
              T.let(
                :"ar-ye",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AS =
              T.let(
                :as,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AS_IN =
              T.let(
                :"as-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ASA =
              T.let(
                :asa,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ASA_TZ =
              T.let(
                :"asa-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AST =
              T.let(
                :ast,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AST_ES =
              T.let(
                :"ast-es",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AV =
              T.let(
                :av,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AY =
              T.let(
                :ay,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AZ =
              T.let(
                :az,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            AZ_AZ =
              T.let(
                :"az-az",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BA =
              T.let(
                :ba,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BAS =
              T.let(
                :bas,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BAS_CM =
              T.let(
                :"bas-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BE =
              T.let(
                :be,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BE_BY =
              T.let(
                :"be-by",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BEM =
              T.let(
                :bem,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BEM_ZM =
              T.let(
                :"bem-zm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BEZ =
              T.let(
                :bez,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BEZ_TZ =
              T.let(
                :"bez-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BG =
              T.let(
                :bg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BG_BG =
              T.let(
                :"bg-bg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BGC =
              T.let(
                :bgc,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BGC_IN =
              T.let(
                :"bgc-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BHO =
              T.let(
                :bho,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BHO_IN =
              T.let(
                :"bho-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BI =
              T.let(
                :bi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BM =
              T.let(
                :bm,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BM_ML =
              T.let(
                :"bm-ml",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BN =
              T.let(
                :bn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BN_BD =
              T.let(
                :"bn-bd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BN_IN =
              T.let(
                :"bn-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BO =
              T.let(
                :bo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BO_CN =
              T.let(
                :"bo-cn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BO_IN =
              T.let(
                :"bo-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BR =
              T.let(
                :br,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BR_FR =
              T.let(
                :"br-fr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BRX =
              T.let(
                :brx,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BRX_IN =
              T.let(
                :"brx-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BS =
              T.let(
                :bs,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            BS_BA =
              T.let(
                :"bs-ba",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CA =
              T.let(
                :ca,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CA_AD =
              T.let(
                :"ca-ad",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CA_ES =
              T.let(
                :"ca-es",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CA_FR =
              T.let(
                :"ca-fr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CA_IT =
              T.let(
                :"ca-it",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CCP =
              T.let(
                :ccp,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CCP_BD =
              T.let(
                :"ccp-bd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CCP_IN =
              T.let(
                :"ccp-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CE =
              T.let(
                :ce,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CE_RU =
              T.let(
                :"ce-ru",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CEB =
              T.let(
                :ceb,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CEB_PH =
              T.let(
                :"ceb-ph",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CGG =
              T.let(
                :cgg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CGG_UG =
              T.let(
                :"cgg-ug",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CH =
              T.let(
                :ch,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CHR =
              T.let(
                :chr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CHR_US =
              T.let(
                :"chr-us",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CKB =
              T.let(
                :ckb,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CKB_IQ =
              T.let(
                :"ckb-iq",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CKB_IR =
              T.let(
                :"ckb-ir",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CO =
              T.let(
                :co,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CR =
              T.let(
                :cr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CS =
              T.let(
                :cs,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CS_CZ =
              T.let(
                :"cs-cz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CU =
              T.let(
                :cu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CU_RU =
              T.let(
                :"cu-ru",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CV =
              T.let(
                :cv,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CV_RU =
              T.let(
                :"cv-ru",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CY =
              T.let(
                :cy,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            CY_GB =
              T.let(
                :"cy-gb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DA =
              T.let(
                :da,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DA_DK =
              T.let(
                :"da-dk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DA_GL =
              T.let(
                :"da-gl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DAV =
              T.let(
                :dav,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DAV_KE =
              T.let(
                :"dav-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE =
              T.let(
                :de,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE_AT =
              T.let(
                :"de-at",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE_BE =
              T.let(
                :"de-be",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE_CH =
              T.let(
                :"de-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE_DE =
              T.let(
                :"de-de",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE_GR =
              T.let(
                :"de-gr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE_IT =
              T.let(
                :"de-it",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE_LI =
              T.let(
                :"de-li",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DE_LU =
              T.let(
                :"de-lu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DJE =
              T.let(
                :dje,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DJE_NE =
              T.let(
                :"dje-ne",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DOI =
              T.let(
                :doi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DOI_IN =
              T.let(
                :"doi-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DSB =
              T.let(
                :dsb,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DSB_DE =
              T.let(
                :"dsb-de",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DUA =
              T.let(
                :dua,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DUA_CM =
              T.let(
                :"dua-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DV =
              T.let(
                :dv,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DYO =
              T.let(
                :dyo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DYO_SN =
              T.let(
                :"dyo-sn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DZ =
              T.let(
                :dz,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            DZ_BT =
              T.let(
                :"dz-bt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EBU =
              T.let(
                :ebu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EBU_KE =
              T.let(
                :"ebu-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EE =
              T.let(
                :ee,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EE_GH =
              T.let(
                :"ee-gh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EE_TG =
              T.let(
                :"ee-tg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EL =
              T.let(
                :el,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EL_CY =
              T.let(
                :"el-cy",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EL_GR =
              T.let(
                :"el-gr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN =
              T.let(
                :en,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_001 =
              T.let(
                :"en-001",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_150 =
              T.let(
                :"en-150",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_AE =
              T.let(
                :"en-ae",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_AG =
              T.let(
                :"en-ag",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_AI =
              T.let(
                :"en-ai",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_AS =
              T.let(
                :"en-as",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_AT =
              T.let(
                :"en-at",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_AU =
              T.let(
                :"en-au",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_BB =
              T.let(
                :"en-bb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_BE =
              T.let(
                :"en-be",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_BI =
              T.let(
                :"en-bi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_BM =
              T.let(
                :"en-bm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_BS =
              T.let(
                :"en-bs",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_BW =
              T.let(
                :"en-bw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_BZ =
              T.let(
                :"en-bz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_CA =
              T.let(
                :"en-ca",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_CC =
              T.let(
                :"en-cc",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_CH =
              T.let(
                :"en-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_CK =
              T.let(
                :"en-ck",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_CM =
              T.let(
                :"en-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_CN =
              T.let(
                :"en-cn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_CX =
              T.let(
                :"en-cx",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_CY =
              T.let(
                :"en-cy",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_DE =
              T.let(
                :"en-de",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_DG =
              T.let(
                :"en-dg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_DK =
              T.let(
                :"en-dk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_DM =
              T.let(
                :"en-dm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_EE =
              T.let(
                :"en-ee",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_EG =
              T.let(
                :"en-eg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_ER =
              T.let(
                :"en-er",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_ES =
              T.let(
                :"en-es",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_FI =
              T.let(
                :"en-fi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_FJ =
              T.let(
                :"en-fj",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_FK =
              T.let(
                :"en-fk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_FM =
              T.let(
                :"en-fm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_FR =
              T.let(
                :"en-fr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_GB =
              T.let(
                :"en-gb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_GD =
              T.let(
                :"en-gd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_GG =
              T.let(
                :"en-gg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_GH =
              T.let(
                :"en-gh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_GI =
              T.let(
                :"en-gi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_GM =
              T.let(
                :"en-gm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_GU =
              T.let(
                :"en-gu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_GY =
              T.let(
                :"en-gy",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_HK =
              T.let(
                :"en-hk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_ID =
              T.let(
                :"en-id",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_IE =
              T.let(
                :"en-ie",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_IL =
              T.let(
                :"en-il",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_IM =
              T.let(
                :"en-im",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_IN =
              T.let(
                :"en-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_IO =
              T.let(
                :"en-io",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_JE =
              T.let(
                :"en-je",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_JM =
              T.let(
                :"en-jm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_KE =
              T.let(
                :"en-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_KI =
              T.let(
                :"en-ki",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_KN =
              T.let(
                :"en-kn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_KY =
              T.let(
                :"en-ky",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_LC =
              T.let(
                :"en-lc",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_LR =
              T.let(
                :"en-lr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_LS =
              T.let(
                :"en-ls",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_LU =
              T.let(
                :"en-lu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MG =
              T.let(
                :"en-mg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MH =
              T.let(
                :"en-mh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MO =
              T.let(
                :"en-mo",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MP =
              T.let(
                :"en-mp",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MS =
              T.let(
                :"en-ms",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MT =
              T.let(
                :"en-mt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MU =
              T.let(
                :"en-mu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MV =
              T.let(
                :"en-mv",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MW =
              T.let(
                :"en-mw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MX =
              T.let(
                :"en-mx",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_MY =
              T.let(
                :"en-my",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_NA =
              T.let(
                :"en-na",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_NF =
              T.let(
                :"en-nf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_NG =
              T.let(
                :"en-ng",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_NL =
              T.let(
                :"en-nl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_NR =
              T.let(
                :"en-nr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_NU =
              T.let(
                :"en-nu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_NZ =
              T.let(
                :"en-nz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_PG =
              T.let(
                :"en-pg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_PH =
              T.let(
                :"en-ph",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_PK =
              T.let(
                :"en-pk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_PN =
              T.let(
                :"en-pn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_PR =
              T.let(
                :"en-pr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_PT =
              T.let(
                :"en-pt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_PW =
              T.let(
                :"en-pw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_RW =
              T.let(
                :"en-rw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SB =
              T.let(
                :"en-sb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SC =
              T.let(
                :"en-sc",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SD =
              T.let(
                :"en-sd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SE =
              T.let(
                :"en-se",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SG =
              T.let(
                :"en-sg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SH =
              T.let(
                :"en-sh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SI =
              T.let(
                :"en-si",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SL =
              T.let(
                :"en-sl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SS =
              T.let(
                :"en-ss",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SX =
              T.let(
                :"en-sx",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_SZ =
              T.let(
                :"en-sz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_TC =
              T.let(
                :"en-tc",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_TH =
              T.let(
                :"en-th",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_TK =
              T.let(
                :"en-tk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_TN =
              T.let(
                :"en-tn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_TO =
              T.let(
                :"en-to",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_TT =
              T.let(
                :"en-tt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_TV =
              T.let(
                :"en-tv",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_TZ =
              T.let(
                :"en-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_UG =
              T.let(
                :"en-ug",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_UM =
              T.let(
                :"en-um",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_US =
              T.let(
                :"en-us",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_VC =
              T.let(
                :"en-vc",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_VG =
              T.let(
                :"en-vg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_VI =
              T.let(
                :"en-vi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_VN =
              T.let(
                :"en-vn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_VU =
              T.let(
                :"en-vu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_WS =
              T.let(
                :"en-ws",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_ZA =
              T.let(
                :"en-za",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_ZM =
              T.let(
                :"en-zm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EN_ZW =
              T.let(
                :"en-zw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EO =
              T.let(
                :eo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EO_001 =
              T.let(
                :"eo-001",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES =
              T.let(
                :es,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_419 =
              T.let(
                :"es-419",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_AR =
              T.let(
                :"es-ar",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_BO =
              T.let(
                :"es-bo",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_BR =
              T.let(
                :"es-br",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_BZ =
              T.let(
                :"es-bz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_CL =
              T.let(
                :"es-cl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_CO =
              T.let(
                :"es-co",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_CR =
              T.let(
                :"es-cr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_CU =
              T.let(
                :"es-cu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_DO =
              T.let(
                :"es-do",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_EA =
              T.let(
                :"es-ea",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_EC =
              T.let(
                :"es-ec",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_ES =
              T.let(
                :"es-es",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_GQ =
              T.let(
                :"es-gq",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_GT =
              T.let(
                :"es-gt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_HN =
              T.let(
                :"es-hn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_IC =
              T.let(
                :"es-ic",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_MX =
              T.let(
                :"es-mx",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_NI =
              T.let(
                :"es-ni",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_PA =
              T.let(
                :"es-pa",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_PE =
              T.let(
                :"es-pe",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_PH =
              T.let(
                :"es-ph",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_PR =
              T.let(
                :"es-pr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_PY =
              T.let(
                :"es-py",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_SV =
              T.let(
                :"es-sv",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_US =
              T.let(
                :"es-us",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_UY =
              T.let(
                :"es-uy",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ES_VE =
              T.let(
                :"es-ve",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ET =
              T.let(
                :et,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ET_EE =
              T.let(
                :"et-ee",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EU =
              T.let(
                :eu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EU_ES =
              T.let(
                :"eu-es",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EWO =
              T.let(
                :ewo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            EWO_CM =
              T.let(
                :"ewo-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FA =
              T.let(
                :fa,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FA_AF =
              T.let(
                :"fa-af",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FA_IR =
              T.let(
                :"fa-ir",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF =
              T.let(
                :ff,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_BF =
              T.let(
                :"ff-bf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_CM =
              T.let(
                :"ff-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_GH =
              T.let(
                :"ff-gh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_GM =
              T.let(
                :"ff-gm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_GN =
              T.let(
                :"ff-gn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_GW =
              T.let(
                :"ff-gw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_LR =
              T.let(
                :"ff-lr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_MR =
              T.let(
                :"ff-mr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_NE =
              T.let(
                :"ff-ne",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_NG =
              T.let(
                :"ff-ng",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_SL =
              T.let(
                :"ff-sl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FF_SN =
              T.let(
                :"ff-sn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FI =
              T.let(
                :fi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FI_FI =
              T.let(
                :"fi-fi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FIL =
              T.let(
                :fil,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FIL_PH =
              T.let(
                :"fil-ph",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FJ =
              T.let(
                :fj,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FO =
              T.let(
                :fo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FO_DK =
              T.let(
                :"fo-dk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FO_FO =
              T.let(
                :"fo-fo",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR =
              T.let(
                :fr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_BE =
              T.let(
                :"fr-be",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_BF =
              T.let(
                :"fr-bf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_BI =
              T.let(
                :"fr-bi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_BJ =
              T.let(
                :"fr-bj",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_BL =
              T.let(
                :"fr-bl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_CA =
              T.let(
                :"fr-ca",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_CD =
              T.let(
                :"fr-cd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_CF =
              T.let(
                :"fr-cf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_CG =
              T.let(
                :"fr-cg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_CH =
              T.let(
                :"fr-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_CI =
              T.let(
                :"fr-ci",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_CM =
              T.let(
                :"fr-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_DJ =
              T.let(
                :"fr-dj",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_DZ =
              T.let(
                :"fr-dz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_FR =
              T.let(
                :"fr-fr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_GA =
              T.let(
                :"fr-ga",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_GF =
              T.let(
                :"fr-gf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_GN =
              T.let(
                :"fr-gn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_GP =
              T.let(
                :"fr-gp",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_GQ =
              T.let(
                :"fr-gq",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_HT =
              T.let(
                :"fr-ht",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_KM =
              T.let(
                :"fr-km",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_LU =
              T.let(
                :"fr-lu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_MA =
              T.let(
                :"fr-ma",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_MC =
              T.let(
                :"fr-mc",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_MF =
              T.let(
                :"fr-mf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_MG =
              T.let(
                :"fr-mg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_ML =
              T.let(
                :"fr-ml",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_MQ =
              T.let(
                :"fr-mq",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_MR =
              T.let(
                :"fr-mr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_MU =
              T.let(
                :"fr-mu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_NC =
              T.let(
                :"fr-nc",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_NE =
              T.let(
                :"fr-ne",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_PF =
              T.let(
                :"fr-pf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_PM =
              T.let(
                :"fr-pm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_RE =
              T.let(
                :"fr-re",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_RW =
              T.let(
                :"fr-rw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_SC =
              T.let(
                :"fr-sc",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_SN =
              T.let(
                :"fr-sn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_SY =
              T.let(
                :"fr-sy",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_TD =
              T.let(
                :"fr-td",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_TG =
              T.let(
                :"fr-tg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_TN =
              T.let(
                :"fr-tn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_VU =
              T.let(
                :"fr-vu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_WF =
              T.let(
                :"fr-wf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FR_YT =
              T.let(
                :"fr-yt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FRR =
              T.let(
                :frr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FRR_DE =
              T.let(
                :"frr-de",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FUR =
              T.let(
                :fur,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FUR_IT =
              T.let(
                :"fur-it",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FY =
              T.let(
                :fy,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            FY_NL =
              T.let(
                :"fy-nl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GA =
              T.let(
                :ga,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GA_GB =
              T.let(
                :"ga-gb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GA_IE =
              T.let(
                :"ga-ie",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GD =
              T.let(
                :gd,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GD_GB =
              T.let(
                :"gd-gb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GL =
              T.let(
                :gl,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GL_ES =
              T.let(
                :"gl-es",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GN =
              T.let(
                :gn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GSW =
              T.let(
                :gsw,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GSW_CH =
              T.let(
                :"gsw-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GSW_FR =
              T.let(
                :"gsw-fr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GSW_LI =
              T.let(
                :"gsw-li",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GU =
              T.let(
                :gu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GU_IN =
              T.let(
                :"gu-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GUZ =
              T.let(
                :guz,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GUZ_KE =
              T.let(
                :"guz-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GV =
              T.let(
                :gv,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            GV_IM =
              T.let(
                :"gv-im",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HA =
              T.let(
                :ha,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HA_GH =
              T.let(
                :"ha-gh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HA_NE =
              T.let(
                :"ha-ne",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HA_NG =
              T.let(
                :"ha-ng",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HAW =
              T.let(
                :haw,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HAW_US =
              T.let(
                :"haw-us",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HE =
              T.let(
                :he,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HE_IL =
              T.let(
                :"he-il",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HI =
              T.let(
                :hi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HI_IN =
              T.let(
                :"hi-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HMN =
              T.let(
                :hmn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HO =
              T.let(
                :ho,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HR =
              T.let(
                :hr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HR_BA =
              T.let(
                :"hr-ba",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HR_HR =
              T.let(
                :"hr-hr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HSB =
              T.let(
                :hsb,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HSB_DE =
              T.let(
                :"hsb-de",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HT =
              T.let(
                :ht,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HU =
              T.let(
                :hu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HU_HU =
              T.let(
                :"hu-hu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HY =
              T.let(
                :hy,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HY_AM =
              T.let(
                :"hy-am",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            HZ =
              T.let(
                :hz,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IA =
              T.let(
                :ia,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IA_001 =
              T.let(
                :"ia-001",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ID =
              T.let(
                :id,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ID_ID =
              T.let(
                :"id-id",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IE =
              T.let(
                :ie,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IG =
              T.let(
                :ig,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IG_NG =
              T.let(
                :"ig-ng",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            II =
              T.let(
                :ii,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            II_CN =
              T.let(
                :"ii-cn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IK =
              T.let(
                :ik,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IO =
              T.let(
                :io,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IS =
              T.let(
                :is,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IS_IS =
              T.let(
                :"is-is",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IT =
              T.let(
                :it,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IT_CH =
              T.let(
                :"it-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IT_IT =
              T.let(
                :"it-it",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IT_SM =
              T.let(
                :"it-sm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IT_VA =
              T.let(
                :"it-va",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            IU =
              T.let(
                :iu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            JA =
              T.let(
                :ja,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            JA_JP =
              T.let(
                :"ja-jp",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            JGO =
              T.let(
                :jgo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            JGO_CM =
              T.let(
                :"jgo-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            JMC =
              T.let(
                :jmc,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            JMC_TZ =
              T.let(
                :"jmc-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            JV =
              T.let(
                :jv,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            JV_ID =
              T.let(
                :"jv-id",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KA =
              T.let(
                :ka,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KA_GE =
              T.let(
                :"ka-ge",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KAB =
              T.let(
                :kab,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KAB_DZ =
              T.let(
                :"kab-dz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KAM =
              T.let(
                :kam,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KAM_KE =
              T.let(
                :"kam-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KAR =
              T.let(
                :kar,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KDE =
              T.let(
                :kde,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KDE_TZ =
              T.let(
                :"kde-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KEA =
              T.let(
                :kea,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KEA_CV =
              T.let(
                :"kea-cv",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KG =
              T.let(
                :kg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KGP =
              T.let(
                :kgp,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KGP_BR =
              T.let(
                :"kgp-br",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KH =
              T.let(
                :kh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KHQ =
              T.let(
                :khq,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KHQ_ML =
              T.let(
                :"khq-ml",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KI =
              T.let(
                :ki,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KI_KE =
              T.let(
                :"ki-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KJ =
              T.let(
                :kj,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KK =
              T.let(
                :kk,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KK_KZ =
              T.let(
                :"kk-kz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KKJ =
              T.let(
                :kkj,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KKJ_CM =
              T.let(
                :"kkj-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KL =
              T.let(
                :kl,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KL_GL =
              T.let(
                :"kl-gl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KLN =
              T.let(
                :kln,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KLN_KE =
              T.let(
                :"kln-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KM =
              T.let(
                :km,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KM_KH =
              T.let(
                :"km-kh",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KN =
              T.let(
                :kn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KN_IN =
              T.let(
                :"kn-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KO =
              T.let(
                :ko,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KO_KP =
              T.let(
                :"ko-kp",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KO_KR =
              T.let(
                :"ko-kr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KOK =
              T.let(
                :kok,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KOK_IN =
              T.let(
                :"kok-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KR =
              T.let(
                :kr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KS =
              T.let(
                :ks,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KS_IN =
              T.let(
                :"ks-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KSB =
              T.let(
                :ksb,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KSB_TZ =
              T.let(
                :"ksb-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KSF =
              T.let(
                :ksf,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KSF_CM =
              T.let(
                :"ksf-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KSH =
              T.let(
                :ksh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KSH_DE =
              T.let(
                :"ksh-de",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KU =
              T.let(
                :ku,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KU_TR =
              T.let(
                :"ku-tr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KV =
              T.let(
                :kv,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KW =
              T.let(
                :kw,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KW_GB =
              T.let(
                :"kw-gb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KY =
              T.let(
                :ky,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            KY_KG =
              T.let(
                :"ky-kg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LA =
              T.let(
                :la,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LAG =
              T.let(
                :lag,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LAG_TZ =
              T.let(
                :"lag-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LB =
              T.let(
                :lb,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LB_LU =
              T.let(
                :"lb-lu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LG =
              T.let(
                :lg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LG_UG =
              T.let(
                :"lg-ug",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LI =
              T.let(
                :li,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LKT =
              T.let(
                :lkt,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LKT_US =
              T.let(
                :"lkt-us",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LN =
              T.let(
                :ln,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LN_AO =
              T.let(
                :"ln-ao",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LN_CD =
              T.let(
                :"ln-cd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LN_CF =
              T.let(
                :"ln-cf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LN_CG =
              T.let(
                :"ln-cg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LO =
              T.let(
                :lo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LO_LA =
              T.let(
                :"lo-la",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LRC =
              T.let(
                :lrc,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LRC_IQ =
              T.let(
                :"lrc-iq",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LRC_IR =
              T.let(
                :"lrc-ir",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LT =
              T.let(
                :lt,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LT_LT =
              T.let(
                :"lt-lt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LU =
              T.let(
                :lu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LU_CD =
              T.let(
                :"lu-cd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LUO =
              T.let(
                :luo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LUO_KE =
              T.let(
                :"luo-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LUY =
              T.let(
                :luy,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LUY_KE =
              T.let(
                :"luy-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LV =
              T.let(
                :lv,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            LV_LV =
              T.let(
                :"lv-lv",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MAI =
              T.let(
                :mai,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MAI_IN =
              T.let(
                :"mai-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MAS =
              T.let(
                :mas,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MAS_KE =
              T.let(
                :"mas-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MAS_TZ =
              T.let(
                :"mas-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MDF =
              T.let(
                :mdf,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MDF_RU =
              T.let(
                :"mdf-ru",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MER =
              T.let(
                :mer,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MER_KE =
              T.let(
                :"mer-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MFE =
              T.let(
                :mfe,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MFE_MU =
              T.let(
                :"mfe-mu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MG =
              T.let(
                :mg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MG_MG =
              T.let(
                :"mg-mg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MGH =
              T.let(
                :mgh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MGH_MZ =
              T.let(
                :"mgh-mz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MGO =
              T.let(
                :mgo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MGO_CM =
              T.let(
                :"mgo-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MH =
              T.let(
                :mh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MI =
              T.let(
                :mi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MI_NZ =
              T.let(
                :"mi-nz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MK =
              T.let(
                :mk,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MK_MK =
              T.let(
                :"mk-mk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ML =
              T.let(
                :ml,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ML_IN =
              T.let(
                :"ml-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MN =
              T.let(
                :mn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MN_MN =
              T.let(
                :"mn-mn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MNI =
              T.let(
                :mni,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MNI_IN =
              T.let(
                :"mni-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MR =
              T.let(
                :mr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MR_IN =
              T.let(
                :"mr-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MS =
              T.let(
                :ms,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MS_BN =
              T.let(
                :"ms-bn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MS_ID =
              T.let(
                :"ms-id",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MS_MY =
              T.let(
                :"ms-my",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MS_SG =
              T.let(
                :"ms-sg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MT =
              T.let(
                :mt,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MT_MT =
              T.let(
                :"mt-mt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MUA =
              T.let(
                :mua,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MUA_CM =
              T.let(
                :"mua-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MY =
              T.let(
                :my,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MY_MM =
              T.let(
                :"my-mm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MZN =
              T.let(
                :mzn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            MZN_IR =
              T.let(
                :"mzn-ir",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NA =
              T.let(
                :na,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NAQ =
              T.let(
                :naq,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NAQ_NA =
              T.let(
                :"naq-na",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NB =
              T.let(
                :nb,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NB_NO =
              T.let(
                :"nb-no",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NB_SJ =
              T.let(
                :"nb-sj",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ND =
              T.let(
                :nd,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ND_ZW =
              T.let(
                :"nd-zw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NDS =
              T.let(
                :nds,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NDS_DE =
              T.let(
                :"nds-de",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NDS_NL =
              T.let(
                :"nds-nl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NE =
              T.let(
                :ne,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NE_IN =
              T.let(
                :"ne-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NE_NP =
              T.let(
                :"ne-np",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NG =
              T.let(
                :ng,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL =
              T.let(
                :nl,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_AW =
              T.let(
                :"nl-aw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_BE =
              T.let(
                :"nl-be",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_BQ =
              T.let(
                :"nl-bq",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_CH =
              T.let(
                :"nl-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_CW =
              T.let(
                :"nl-cw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_LU =
              T.let(
                :"nl-lu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_NL =
              T.let(
                :"nl-nl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_SR =
              T.let(
                :"nl-sr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NL_SX =
              T.let(
                :"nl-sx",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NMG =
              T.let(
                :nmg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NMG_CM =
              T.let(
                :"nmg-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NN =
              T.let(
                :nn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NN_NO =
              T.let(
                :"nn-no",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NNH =
              T.let(
                :nnh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NNH_CM =
              T.let(
                :"nnh-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NO =
              T.let(
                :no,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NO_NO =
              T.let(
                :"no-no",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NR =
              T.let(
                :nr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NUS =
              T.let(
                :nus,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NUS_SS =
              T.let(
                :"nus-ss",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NV =
              T.let(
                :nv,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NY =
              T.let(
                :ny,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NYN =
              T.let(
                :nyn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            NYN_UG =
              T.let(
                :"nyn-ug",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OC =
              T.let(
                :oc,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OC_ES =
              T.let(
                :"oc-es",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OC_FR =
              T.let(
                :"oc-fr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OJ =
              T.let(
                :oj,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OM =
              T.let(
                :om,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OM_ET =
              T.let(
                :"om-et",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OM_KE =
              T.let(
                :"om-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OR =
              T.let(
                :or,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OR_IN =
              T.let(
                :"or-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OS =
              T.let(
                :os,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OS_GE =
              T.let(
                :"os-ge",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            OS_RU =
              T.let(
                :"os-ru",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PA =
              T.let(
                :pa,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PA_IN =
              T.let(
                :"pa-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PA_PK =
              T.let(
                :"pa-pk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PCM =
              T.let(
                :pcm,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PCM_NG =
              T.let(
                :"pcm-ng",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PI =
              T.let(
                :pi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PIS =
              T.let(
                :pis,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PIS_SB =
              T.let(
                :"pis-sb",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PL =
              T.let(
                :pl,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PL_PL =
              T.let(
                :"pl-pl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PRG =
              T.let(
                :prg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PRG_001 =
              T.let(
                :"prg-001",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PS =
              T.let(
                :ps,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PS_AF =
              T.let(
                :"ps-af",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PS_PK =
              T.let(
                :"ps-pk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT =
              T.let(
                :pt,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_AO =
              T.let(
                :"pt-ao",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_BR =
              T.let(
                :"pt-br",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_CH =
              T.let(
                :"pt-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_CV =
              T.let(
                :"pt-cv",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_GQ =
              T.let(
                :"pt-gq",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_GW =
              T.let(
                :"pt-gw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_LU =
              T.let(
                :"pt-lu",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_MO =
              T.let(
                :"pt-mo",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_MZ =
              T.let(
                :"pt-mz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_PT =
              T.let(
                :"pt-pt",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_ST =
              T.let(
                :"pt-st",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            PT_TL =
              T.let(
                :"pt-tl",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            QU =
              T.let(
                :qu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            QU_BO =
              T.let(
                :"qu-bo",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            QU_EC =
              T.let(
                :"qu-ec",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            QU_PE =
              T.let(
                :"qu-pe",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RAJ =
              T.let(
                :raj,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RAJ_IN =
              T.let(
                :"raj-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RM =
              T.let(
                :rm,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RM_CH =
              T.let(
                :"rm-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RN =
              T.let(
                :rn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RN_BI =
              T.let(
                :"rn-bi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RO =
              T.let(
                :ro,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RO_MD =
              T.let(
                :"ro-md",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RO_RO =
              T.let(
                :"ro-ro",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ROF =
              T.let(
                :rof,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ROF_TZ =
              T.let(
                :"rof-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RU =
              T.let(
                :ru,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RU_BY =
              T.let(
                :"ru-by",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RU_KG =
              T.let(
                :"ru-kg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RU_KZ =
              T.let(
                :"ru-kz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RU_MD =
              T.let(
                :"ru-md",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RU_RU =
              T.let(
                :"ru-ru",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RU_UA =
              T.let(
                :"ru-ua",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RW =
              T.let(
                :rw,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RW_RW =
              T.let(
                :"rw-rw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RWK =
              T.let(
                :rwk,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            RWK_TZ =
              T.let(
                :"rwk-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SA =
              T.let(
                :sa,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SA_IN =
              T.let(
                :"sa-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SAH =
              T.let(
                :sah,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SAH_RU =
              T.let(
                :"sah-ru",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SAQ =
              T.let(
                :saq,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SAQ_KE =
              T.let(
                :"saq-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SAT =
              T.let(
                :sat,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SAT_IN =
              T.let(
                :"sat-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SBP =
              T.let(
                :sbp,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SBP_TZ =
              T.let(
                :"sbp-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SC =
              T.let(
                :sc,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SC_IT =
              T.let(
                :"sc-it",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SD =
              T.let(
                :sd,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SD_IN =
              T.let(
                :"sd-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SD_PK =
              T.let(
                :"sd-pk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SE =
              T.let(
                :se,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SE_FI =
              T.let(
                :"se-fi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SE_NO =
              T.let(
                :"se-no",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SE_SE =
              T.let(
                :"se-se",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SEH =
              T.let(
                :seh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SEH_MZ =
              T.let(
                :"seh-mz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SES =
              T.let(
                :ses,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SES_ML =
              T.let(
                :"ses-ml",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SG =
              T.let(
                :sg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SG_CF =
              T.let(
                :"sg-cf",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SHI =
              T.let(
                :shi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SHI_MA =
              T.let(
                :"shi-ma",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SI =
              T.let(
                :si,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SI_LK =
              T.let(
                :"si-lk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SK =
              T.let(
                :sk,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SK_SK =
              T.let(
                :"sk-sk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SL =
              T.let(
                :sl,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SL_SI =
              T.let(
                :"sl-si",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SM =
              T.let(
                :sm,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SMN =
              T.let(
                :smn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SMN_FI =
              T.let(
                :"smn-fi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SMS =
              T.let(
                :sms,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SMS_FI =
              T.let(
                :"sms-fi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SN =
              T.let(
                :sn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SN_ZW =
              T.let(
                :"sn-zw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SO =
              T.let(
                :so,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SO_DJ =
              T.let(
                :"so-dj",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SO_ET =
              T.let(
                :"so-et",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SO_KE =
              T.let(
                :"so-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SO_SO =
              T.let(
                :"so-so",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SQ =
              T.let(
                :sq,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SQ_AL =
              T.let(
                :"sq-al",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SQ_MK =
              T.let(
                :"sq-mk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SQ_XK =
              T.let(
                :"sq-xk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SR =
              T.let(
                :sr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SR_BA =
              T.let(
                :"sr-ba",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SR_CS =
              T.let(
                :"sr-cs",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SR_ME =
              T.let(
                :"sr-me",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SR_RS =
              T.let(
                :"sr-rs",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SR_XK =
              T.let(
                :"sr-xk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SS =
              T.let(
                :ss,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ST =
              T.let(
                :st,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SU =
              T.let(
                :su,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SU_ID =
              T.let(
                :"su-id",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SV =
              T.let(
                :sv,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SV_AX =
              T.let(
                :"sv-ax",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SV_FI =
              T.let(
                :"sv-fi",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SV_SE =
              T.let(
                :"sv-se",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SW =
              T.let(
                :sw,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SW_CD =
              T.let(
                :"sw-cd",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SW_KE =
              T.let(
                :"sw-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SW_TZ =
              T.let(
                :"sw-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SW_UG =
              T.let(
                :"sw-ug",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            SY =
              T.let(
                :sy,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TA =
              T.let(
                :ta,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TA_IN =
              T.let(
                :"ta-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TA_LK =
              T.let(
                :"ta-lk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TA_MY =
              T.let(
                :"ta-my",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TA_SG =
              T.let(
                :"ta-sg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TE =
              T.let(
                :te,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TE_IN =
              T.let(
                :"te-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TEO =
              T.let(
                :teo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TEO_KE =
              T.let(
                :"teo-ke",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TEO_UG =
              T.let(
                :"teo-ug",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TG =
              T.let(
                :tg,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TG_TJ =
              T.let(
                :"tg-tj",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TH =
              T.let(
                :th,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TH_TH =
              T.let(
                :"th-th",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TI =
              T.let(
                :ti,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TI_ER =
              T.let(
                :"ti-er",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TI_ET =
              T.let(
                :"ti-et",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TK =
              T.let(
                :tk,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TK_TM =
              T.let(
                :"tk-tm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TL =
              T.let(
                :tl,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TN =
              T.let(
                :tn,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TO =
              T.let(
                :to,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TO_TO =
              T.let(
                :"to-to",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TOK =
              T.let(
                :tok,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TOK_001 =
              T.let(
                :"tok-001",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TR =
              T.let(
                :tr,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TR_CY =
              T.let(
                :"tr-cy",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TR_TR =
              T.let(
                :"tr-tr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TS =
              T.let(
                :ts,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TT =
              T.let(
                :tt,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TT_RU =
              T.let(
                :"tt-ru",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TW =
              T.let(
                :tw,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TWQ =
              T.let(
                :twq,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TWQ_NE =
              T.let(
                :"twq-ne",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TY =
              T.let(
                :ty,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TZM =
              T.let(
                :tzm,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            TZM_MA =
              T.let(
                :"tzm-ma",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UG =
              T.let(
                :ug,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UG_CN =
              T.let(
                :"ug-cn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UK =
              T.let(
                :uk,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UK_UA =
              T.let(
                :"uk-ua",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UR =
              T.let(
                :ur,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UR_IN =
              T.let(
                :"ur-in",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UR_PK =
              T.let(
                :"ur-pk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UZ =
              T.let(
                :uz,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UZ_AF =
              T.let(
                :"uz-af",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            UZ_UZ =
              T.let(
                :"uz-uz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VAI =
              T.let(
                :vai,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VAI_LR =
              T.let(
                :"vai-lr",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VE =
              T.let(
                :ve,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VI =
              T.let(
                :vi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VI_VN =
              T.let(
                :"vi-vn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VO =
              T.let(
                :vo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VO_001 =
              T.let(
                :"vo-001",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VUN =
              T.let(
                :vun,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            VUN_TZ =
              T.let(
                :"vun-tz",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            WA =
              T.let(
                :wa,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            WAE =
              T.let(
                :wae,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            WAE_CH =
              T.let(
                :"wae-ch",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            WO =
              T.let(
                :wo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            WO_SN =
              T.let(
                :"wo-sn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            XH =
              T.let(
                :xh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            XH_ZA =
              T.let(
                :"xh-za",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            XOG =
              T.let(
                :xog,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            XOG_UG =
              T.let(
                :"xog-ug",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YAV =
              T.let(
                :yav,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YAV_CM =
              T.let(
                :"yav-cm",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YI =
              T.let(
                :yi,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YI_001 =
              T.let(
                :"yi-001",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YO =
              T.let(
                :yo,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YO_BJ =
              T.let(
                :"yo-bj",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YO_NG =
              T.let(
                :"yo-ng",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YRL =
              T.let(
                :yrl,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YRL_BR =
              T.let(
                :"yrl-br",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YRL_CO =
              T.let(
                :"yrl-co",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YRL_VE =
              T.let(
                :"yrl-ve",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YUE =
              T.let(
                :yue,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YUE_CN =
              T.let(
                :"yue-cn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            YUE_HK =
              T.let(
                :"yue-hk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZA =
              T.let(
                :za,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZGH =
              T.let(
                :zgh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZGH_MA =
              T.let(
                :"zgh-ma",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZH =
              T.let(
                :zh,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZH_CN =
              T.let(
                :"zh-cn",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZH_HANS =
              T.let(
                :"zh-hans",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZH_HANT =
              T.let(
                :"zh-hant",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZH_HK =
              T.let(
                :"zh-hk",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZH_MO =
              T.let(
                :"zh-mo",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZH_SG =
              T.let(
                :"zh-sg",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZH_TW =
              T.let(
                :"zh-tw",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZU =
              T.let(
                :zu,
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )
            ZU_ZA =
              T.let(
                :"zu-za",
                HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::Blogs::BlogAuthor::Language::TaggedSymbol
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
end
