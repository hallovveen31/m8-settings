.class public Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "HtcInternalSdCardFormatPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra.storage.type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    const-string v0, "INTERNAL_SD_CARD_FORMAT"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0290

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c028f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x7f0c028f

    return v0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;->updateState()V

    return-void
.end method

.method public updateState()V
    .locals 3

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "formatting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setEnabledInForeground(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
