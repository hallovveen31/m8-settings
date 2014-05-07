.class public Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcLegalInformationCategory.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const v0, 0x7f0c06ed

    .line 88
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    .end local v0           #resId:I
    :cond_0
    const v0, 0x7f0c06ee

    .restart local v0       #resId:I
    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0c06ec

    return v0
.end method

.method protected onApplyDemoMode()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;->setEnabled(Z)V

    .line 66
    :cond_0
    return-void
.end method
