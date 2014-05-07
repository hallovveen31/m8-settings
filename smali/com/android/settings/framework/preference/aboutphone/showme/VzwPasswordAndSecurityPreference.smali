.class public Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;
.super Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;
.source "VzwPasswordAndSecurityPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;->supportIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020261

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.iconglossary"

    const-string v2, "com.htc.iconglossary.PasswordAndSecurityActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, ""

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;->getCustomTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f0c01a8

    return v0
.end method

.method protected getLaunchingTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "PWD"

    return-object v0
.end method
