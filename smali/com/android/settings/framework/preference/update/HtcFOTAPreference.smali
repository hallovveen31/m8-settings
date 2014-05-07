.class public final Lcom/android/settings/framework/preference/update/HtcFOTAPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcFOTAPreference.java"


# static fields
.field private static final FOTA_PACKAGE_NAME:Ljava/lang/String; = "com.htc.updater"

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.htc.updater.FOTA_SETTING"

.field private static final KEY:Ljava/lang/String; = "FOTA_download_options"


# instance fields
.field private mAllowAdd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->initialize()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->initialize()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->initialize()V

    .line 57
    return-void
.end method

.method private isFOTAEnabled()Z
    .locals 10

    .prologue
    .line 155
    const/4 v8, 0x1

    .line 156
    .local v8, result:Z
    const-string v0, "content://com.htc.updater/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, fotaSettingUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 159
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_value"

    aput-object v4, v2, v3

    const-string v3, "_name=\'enable_manual_check\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, value:Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const/4 v8, 0x1

    .line 174
    .end local v9           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1
    :goto_1
    return v8

    .line 167
    .restart local v9       #value:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "false"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v8, 0x0

    goto :goto_0

    .line 171
    .end local v9           #value:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 172
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "HtcFOTAPreference"

    const-string v2, "isFOTAEnabled"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 174
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private setTitle(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 8
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 98
    .local v2, parentTitle:Ljava/lang/CharSequence;
    new-instance v1, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v1}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    .line 99
    .local v1, manager:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;
    const-string v6, "HtcOMADM_SPCS"

    invoke-virtual {v1, v6, v4, v5}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v3

    .line 100
    .local v3, reader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    const-string v6, "omadm_feature_common"

    invoke-virtual {v3, v6, v5}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    .local v0, bisOMADM:Z
    invoke-direct {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->isFOTAEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    if-eqz v0, :cond_0

    .line 106
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0600

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    const v5, 0x7f0c0605

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setTitle(I)V

    .line 114
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setTitle(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 150
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setOrder(I)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 9

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 64
    const-string v4, "FOTA_download_options"

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setKey(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 68
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 70
    .local v0, fotaRes:Landroid/content/res/Resources;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 73
    :try_start_0
    const-string v4, "com.htc.updater"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    if-eqz v0, :cond_1

    .line 78
    const-string v4, "category_software_update"

    const-string v5, "string"

    const-string v6, "com.htc.updater"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, titleResId:I
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.updater.FOTA_SETTING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, it:Landroid/content/Intent;
    const-string v4, "fromSettings"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setIntent(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    iput-boolean v7, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 92
    .end local v1           #it:Landroid/content/Intent;
    .end local v3           #titleResId:I
    :cond_1
    return-void

    .line 74
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public setDownloadSummary(Z)V
    .locals 6
    .parameter "isUpdaterProcessing"

    .prologue
    .line 119
    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 121
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 123
    .local v0, fotaRes:Landroid/content/res/Resources;
    :try_start_0
    const-string v3, "com.htc.updater"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 126
    :goto_0
    if-eqz v0, :cond_0

    .line 128
    :try_start_1
    const-string v3, "category_software_update_srmmary"

    const-string v4, "string"

    const-string v5, "com.htc.updater"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, summaryResId:I
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .end local v0           #fotaRes:Landroid/content/res/Resources;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #summaryResId:I
    :cond_0
    :goto_1
    return-void

    .line 134
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 130
    .restart local v0       #fotaRes:Landroid/content/res/Resources;
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 124
    :catch_1
    move-exception v3

    goto :goto_0
.end method
