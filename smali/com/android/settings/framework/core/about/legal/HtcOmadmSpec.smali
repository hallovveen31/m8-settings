.class interface abstract Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;
.super Ljava/lang/Object;
.source "HtcOmadmSpec.java"


# static fields
.field public static final BRAND_ALPHA_FILE:Ljava/io/File;

.field public static final EN_US_LEGAL_FILE:Ljava/io/File;

.field public static final ES_US_LEGAL_FILE:Ljava/io/File;

.field public static final HOME_PAGE_FILE:Ljava/io/File;

.field public static final ROOT:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/carrier"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->ROOT:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->ROOT:Ljava/io/File;

    const-string v2, "Customization/CarrierLegalExt/en_US.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->EN_US_LEGAL_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->ROOT:Ljava/io/File;

    const-string v2, "Customization/CarrierLegalExt/es_US.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->ES_US_LEGAL_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->ROOT:Ljava/io/File;

    const-string v2, "Customization/BrandAlpha"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->BRAND_ALPHA_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->ROOT:Ljava/io/File;

    const-string v2, "Customization/CarrierLegal/CarrierHomePage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;->HOME_PAGE_FILE:Ljava/io/File;

    return-void
.end method
