.class public Lcom/android/settings/framework/preference/aboutphone/legal/HtcSprintLegalInformation;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "HtcSprintLegalInformation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcSprintLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/legal/HtcSprintLegalAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcSprintLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
