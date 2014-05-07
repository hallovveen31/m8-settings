.class public Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcSdkApiLevelPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c030b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0c0b48

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, summary:Ljava/lang/String;
    invoke-static {}, Lcom/htc/customization/FrameworkCustomization;->getInstance()Lcom/htc/customization/HtcCustomization;

    move-result-object v0

    .line 40
    .local v0, c:Lcom/htc/customization/HtcCustomization;
    :try_start_0
    const-string v4, "sdk.sdkinfo.sdk.version"

    invoke-interface {v0, v4}, Lcom/htc/customization/HtcCustomization;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/customization/CustomizationValueNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 42
    .local v3, version:Ljava/lang/String;
    move-object v2, v3

    .line 50
    .end local v3           #version:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Lcom/htc/customization/CustomizationValueNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    sget-object v4, Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/customization/CustomizationValueNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
