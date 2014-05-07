.class public Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;
.super Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;
.source "HtcIPhoneTransferPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY_FROM_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityManager;->isInSettingsTask(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-class v0, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;

    .line 90
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":android:show_fragment"

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":android:show_fragment_title"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;->getCustomTitleRes()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 82
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const-class v0, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;

    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;->getCustomTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0c0a67

    return v0
.end method

.method protected getCustomULogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "iPhone"

    return-object v0
.end method
