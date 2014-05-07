.class Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;
.super Ljava/lang/Object;
.source "HtcEntrySource.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbout()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 1020
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1021
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1022
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090327

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 1023
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020108

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1024
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0035

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1025
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1027
    const-string v1, "about"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 1028
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1029
    return-object v0
.end method

.method public static getAccessibility()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 483
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 484
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 485
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030e

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 486
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020109

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 487
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c105b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 488
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.accessibility.AccessibilitySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 489
    const-string v1, "accessibility"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 490
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 491
    return-object v0
.end method

.method public static getAccountAndSync()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 404
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 405
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 406
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090309

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 407
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 408
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0171

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 409
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.accounts.ManageAccounts"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 410
    const-string v1, "account and sync"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 411
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 412
    return-object v0
.end method

.method public static getActivateDevice()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 8

    .prologue
    .line 978
    new-instance v4, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v4}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 979
    .local v4, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v5, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 980
    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v6, 0x7f090325

    iput-wide v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 981
    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v6, 0x7f020146

    iput v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 982
    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v6, 0x7f0c0118

    iput v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 983
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 991
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.sprint.dsa.source"

    const-string v7, "menu"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 998
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 999
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1000
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1001
    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v2, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 1005
    :goto_0
    const-string v5, "activate device"

    iput-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 1006
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1007
    return-object v4

    .line 1003
    :cond_0
    sget-object v5, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->TAG:Ljava/lang/String;

    const-string v6, "no such activity!"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAirplaneMode()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 70
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 71
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902f9

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 72
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 73
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 74
    const-string v1, "airplane mode"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 76
    return-object v0
.end method

.method public static getAppAssociation()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 817
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 818
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 819
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031b

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 820
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020148

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 821
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c09ed

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 822
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.applications.HtcAppAssociationsSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 824
    const-string v1, "app association"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 825
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 826
    return-object v0
.end method

.method public static getApps()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 730
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 731
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 732
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031a

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 733
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 734
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getAppsTitleResId()I

    move-result v2

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 735
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.applications.ManageApplications"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 737
    const-string v1, "apps"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 738
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 739
    return-object v0
.end method

.method public static getBackupAndReset()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 496
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 497
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 498
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030f

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 499
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 500
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1171

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 501
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.PrivacySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 502
    const-string v1, "backup and reset"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 503
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 504
    return-object v0
.end method

.method public static getBackupAssistantPlus()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 9

    .prologue
    .line 418
    const-string v0, "com.htc.vmmRemoved"

    .line 419
    .local v0, PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 420
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 423
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v5}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 424
    .local v5, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v6, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 425
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v7, 0x7f09030a

    iput-wide v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 429
    :try_start_0
    const-string v6, "com.htc.vmmRemoved"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 430
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v7, "com.htc.vmmRemoved"

    iput-object v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 431
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 432
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.htc.vmm.settings.Backup"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 441
    const-string v6, "backup assistant plus"

    iput-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 442
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 443
    return-object v5

    .line 433
    :catch_0
    move-exception v3

    .line 435
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v7, 0x7f02026d

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 436
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v7, 0x7f0c0119

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_0
.end method

.method public static getBeatsAudio()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 585
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 586
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 587
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090313

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 588
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02014d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 589
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x2040249

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 590
    const-string v1, "beats audio"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 591
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 592
    return-object v0
.end method

.method public static getBluetooth()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 146
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 147
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fe

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 148
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 149
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0cb4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 150
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.bluetooth.BluetoothSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 151
    const-string v1, "bluetooth"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 153
    return-object v0
.end method

.method public static getBoomSound()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 626
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 627
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 628
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090316

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 629
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 630
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0114

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 631
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 632
    const-string v1, "boomsound"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 633
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 634
    return-object v0
.end method

.method public static getCall()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 679
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 680
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 681
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090318

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 682
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020117

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 683
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 684
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 687
    const-string v1, "call"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 688
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 689
    return-object v0
.end method

.method public static getCharm()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 702
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 703
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 704
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090319

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 705
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200a3

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 706
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0147

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 707
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.charm.HtcCharmSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 709
    const-string v1, "charm"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 710
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 711
    return-object v0
.end method

.method public static getDataUsage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 202
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 203
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 204
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090301

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 205
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020121

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 206
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1217

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 207
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.usage"

    const-string v4, "com.htc.usage.DataUsageSummaryActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 212
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 213
    return-object v0
.end method

.method public static getDateAndTime()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 920
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 921
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 922
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090321

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 923
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 924
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c3d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 925
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DateTimeSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 926
    const-string v1, "date and time"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 927
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 928
    return-object v0
.end method

.method public static getDevelopment()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 946
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 947
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 948
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090324

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 949
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 950
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1029

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 951
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DevelopmentSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 952
    const-string v1, "developer options"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 953
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 954
    return-object v0
.end method

.method public static getDeviceCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 1037
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1038
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1039
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0108

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1040
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1041
    return-object v0
.end method

.method public static getDisplay()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 553
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 554
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 555
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090311

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 556
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020110

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 557
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0152

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 558
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DisplaySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 559
    const-string v1, "display"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 560
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 561
    return-object v0
.end method

.method public static getDualNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 276
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 277
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 278
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090304

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 279
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 280
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a21

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 282
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0034

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 286
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02026e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 289
    :cond_0
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.dualsim.DualSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 291
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWorldPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.dualmode.RoamingSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 300
    :cond_1
    const-string v1, "dual network"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 302
    return-object v0
.end method

.method public static getFingerprint()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 773
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 774
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 775
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090312

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 776
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02024d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 777
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0230

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 778
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.fingerprint.HtcFingerprintSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 779
    const-string v1, "fingerprint"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 780
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 781
    return-object v0
.end method

.method public static getHarman()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 646
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 647
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 648
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090317

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 649
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200dc

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 650
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0115

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 651
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 652
    const-string v1, "harman"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 653
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 654
    return-object v0
.end method

.method public static getHtcMini()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 794
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 795
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 796
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902ff

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 797
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020112

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 798
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0aee

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 802
    const-string v1, "htc mini+"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 803
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 804
    return-object v0
.end method

.method public static getInfrared()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 128
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 129
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fd

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 130
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02026b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 131
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 132
    const-string v1, "infrared"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 134
    return-object v0
.end method

.method public static getLanguage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 906
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 907
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 908
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090320

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 909
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020111

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 910
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c02e4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 911
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.inputmethod.InputMethodAndLanguageSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 913
    const-string v1, "language"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 914
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 915
    return-object v0
.end method

.method public static getLocation()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 457
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 458
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 459
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030b

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 460
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020113

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 461
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0175

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 462
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.location.LocationSetting"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 463
    const-string v1, "location"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 464
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 465
    return-object v0
.end method

.method public static getManufacturer()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 866
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 867
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 868
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031c

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 869
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 871
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 873
    const-string v1, "manufacturer"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 874
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 875
    return-object v0
.end method

.method public static getMediaLink()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 219
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 220
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090302

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 221
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020120

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 223
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c011c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 225
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 226
    const-string v1, "media link"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 228
    return-object v0
.end method

.method public static getMobileNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 167
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 168
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 169
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090300

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 170
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020114

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 174
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c039a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 181
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 182
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.Settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 187
    const-string v1, "mobile network"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 189
    return-object v0
.end method

.method public static getMore()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 320
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 321
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 322
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090305

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 323
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020115

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 324
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x20402b0

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 325
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c31

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 326
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 327
    const-string v1, "more"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 328
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 329
    return-object v0
.end method

.method public static getOperator()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 250
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 251
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 252
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090303

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 253
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0cb4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 254
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 255
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 257
    const-string v1, "operator"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 258
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 259
    return-object v0
.end method

.method public static getPersonalCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 337
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 338
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 339
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0109

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 340
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 341
    return-object v0
.end method

.method public static getPersonalize()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 347
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 348
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 349
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090306

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 350
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020116

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 351
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0587

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 352
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.personalize.ACTION_HOMEPERSONALIZE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 354
    const-string v1, "personalize"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 355
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 356
    return-object v0
.end method

.method public static getPhoneCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 543
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 544
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 545
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c10d2

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 546
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 547
    return-object v0
.end method

.method public static getPower()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 893
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 894
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 895
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031e

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 896
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020119

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 897
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0829

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 898
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.Power"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 899
    const-string v1, "power"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 900
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 901
    return-object v0
.end method

.method static getPrinting()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 933
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 934
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 935
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090323

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 936
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 937
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1095

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 938
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.print.PrintSettingsFragment"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 939
    const-string v1, "printing"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 940
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 941
    return-object v0
.end method

.method public static getSecurity()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 470
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 471
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 472
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030d

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 473
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 474
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c5f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 475
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.SecuritySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 476
    const-string v1, "security"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 477
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 478
    return-object v0
.end method

.method static getSkyfireToolbar()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 378
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 379
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 380
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090307

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 381
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020259

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 382
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0ae1

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 383
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.skyfire.browser.toolbar.intent.action.VIEW_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fragment"

    const-string v4, "settings_fragment"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "disable_tutorial"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 387
    const-string v1, "personalize"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 389
    return-object v0
.end method

.method public static getSound()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 666
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 667
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 668
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090314

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 669
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 670
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0de4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 671
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.SoundSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 672
    const-string v1, "sound"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 673
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 674
    return-object v0
.end method

.method public static getStorage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 880
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 881
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 882
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031d

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 883
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020118

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 884
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0e4e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 885
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.deviceinfo.Memory"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 886
    const-string v1, "storage"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 887
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 888
    return-object v0
.end method

.method public static getSystemCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 1050
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1051
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1052
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1053
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1054
    return-object v0
.end method

.method public static getTransferMyStuff()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 520
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 521
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 522
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090310

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 523
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 524
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a5f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 525
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a61

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    .line 526
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-class v2, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 527
    const-string v1, "transfer my stuff"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 528
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 529
    return-object v0
.end method

.method public static getUmc()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 606
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 607
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 608
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090315

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 609
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200e7

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 610
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0112

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 611
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 612
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.UMC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 613
    const-string v1, "umc"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 614
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 615
    return-object v0
.end method

.method public static getUser()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 744
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 745
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 746
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090308

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 747
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02025a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 748
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1294

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 749
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.users.UserSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 750
    const-string v1, "user"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 751
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 752
    return-object v0
.end method

.method static getVoWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 105
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 106
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fb

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 107
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200ab

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 108
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0b20

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 109
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.wifi.VoWifiSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 110
    const-string v1, "vowifi"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 112
    return-object v0
.end method

.method public static getWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 82
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 83
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fa

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 84
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020122

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 85
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0d2c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 86
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.wifi.WifiSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 87
    const-string v1, "wifi"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 89
    return-object v0
.end method

.method public static getWirelessCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 61
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 62
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0107

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 63
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 64
    return-object v0
.end method

.method public static updateActivateDevice(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 1011
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintBoostSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 1016
    :cond_1
    return-void
.end method

.method public static updateAppAssociation(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 862
    return-void
.end method

.method public static updateBackupAndReset(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 509
    const-string v0, "com.htc.backupreset"

    .line 511
    .local v0, HTC_BACKUP_PACKAGE:Ljava/lang/String;
    const-string v1, "com.htc.backupreset"

    invoke-static {p0, v1}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method public static updateBackupAssistantPlus(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 449
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 451
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 453
    return-void

    .line 451
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateBeatsAudio(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 597
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 601
    :cond_0
    return-void
.end method

.method public static updateBluetooth(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 163
    :cond_0
    return-void
.end method

.method public static updateBoomSound(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 638
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 641
    :cond_0
    return-void
.end method

.method public static updateCall(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 694
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcCallFeatureFlags;->supportCallEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 698
    :cond_0
    return-void
.end method

.method public static updateCharm(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 5
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 716
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charm_indicator_supported"

    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 719
    .local v0, visibility:Z
    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 723
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v3, 0x4080

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    .line 724
    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 726
    :cond_1
    return-void
.end method

.method public static updateDevelopment(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 7
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v3, 0x0

    .line 958
    const/4 v2, 0x1

    .line 959
    .local v2, visibility:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDeveloperFeatureFlags;->supportShowDeveloperByDefault()Z

    move-result v4

    if-nez v4, :cond_0

    .line 960
    const-string v4, "development"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 961
    .local v1, pref:Landroid/content/SharedPreferences;
    if-nez v1, :cond_2

    .line 962
    sget-object v4, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->TAG:Ljava/lang/String;

    const-string v5, "updateDevelopment, unabled to get development shared preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 974
    return-void

    .line 964
    .restart local v1       #pref:Landroid/content/SharedPreferences;
    :cond_2
    const-string v4, "show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 965
    .local v0, bPrefShow:Z
    sget-object v4, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDevelopment, bPrefShow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    if-nez v0, :cond_0

    .line 968
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static updateDisplay(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 567
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGestures(Landroid/content/Context;)Z

    move-result v1

    .line 568
    .local v1, gestures:Z
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v0

    .line 569
    .local v0, buttons:Z
    if-eqz v1, :cond_0

    .line 570
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0153

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 572
    :cond_0
    if-eqz v0, :cond_1

    .line 573
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0154

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 575
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 576
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0155

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 581
    :cond_2
    return-void
.end method

.method public static updateDualNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 307
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWorldPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 316
    :cond_1
    return-void
.end method

.method public static updateFingerprint(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 785
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method public static updateHarman(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 658
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 661
    :cond_0
    return-void
.end method

.method public static updateHtcMini(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 808
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHtcMiniPlus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method public static updateInfrared(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcInfraredFeatureFlags;->supportInfraredEntry(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 141
    :cond_0
    return-void
.end method

.method public static updateMediaLink(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v3, 0x0

    .line 232
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 235
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 240
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 242
    iput-boolean v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-void
.end method

.method public static updateMobileNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 194
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 198
    :cond_0
    return-void
.end method

.method public static updateOperator(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 263
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/activity/HtcWrapHeader;)Z

    move-result v0

    .line 267
    .local v0, plugin:Z
    if-eqz v0, :cond_0

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 270
    :cond_0
    return-void
.end method

.method public static updatePersonalize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 369
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isIddaDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updateSkyfireToolbar(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 394
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method public static updateTransferMyStuff(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 0
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 534
    return-void
.end method

.method public static updateUmc(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 619
    invoke-static {}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->isSupportMusicChannel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 622
    :cond_0
    return-void
.end method

.method public static updateUser(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 3
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v1, 0x1

    .line 756
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcUserFeatureFlags;->supportUserSetting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 757
    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 769
    :goto_0
    return-void

    .line 759
    :cond_0
    const/4 v0, 0x1

    .line 761
    .local v0, visibility:Z
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    :cond_1
    const/4 v0, 0x0

    .line 767
    :cond_2
    if-nez v0, :cond_3

    :goto_1
    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static updateVoWifi(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->isSupportVoWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 121
    :cond_0
    return-void
.end method

.method public static updateWifi(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 99
    :cond_0
    return-void
.end method
