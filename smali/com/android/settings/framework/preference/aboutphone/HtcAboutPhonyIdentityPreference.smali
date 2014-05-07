.class public Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcAboutPhonyIdentityPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bCDMAPhone:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 5

    .prologue
    const v1, 0x7f0c06e1

    const v0, 0x7f0c06e0

    const/4 v4, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->initial()V

    .line 113
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v2, v4, :cond_1

    .line 114
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_MEID:Z

    if-ne v2, v4, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMEI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 115
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    if-ne v3, v4, :cond_3

    const v0, 0x7f0c06e3

    :cond_2
    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMEI(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0c06df

    return v0
.end method

.method initial()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    .line 76
    :cond_1
    return-void
.end method
