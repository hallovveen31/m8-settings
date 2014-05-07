.class public Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;
.super Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;
.source "HtcMessageNotificationPreviewPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getCustomDatabaseDefaultValue()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected getCustomDatabaseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "htc_message_notification_preview"

    return-object v0
.end method

.method protected getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    return-object v0
.end method

.method protected bridge synthetic getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onApplyDemoModeInBackground(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;->performClickInForeground(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;->setEnabledInForeground(Z)V

    .line 59
    :cond_1
    return-void
.end method
