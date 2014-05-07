.class Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;
.super Ljava/lang/Object;
.source "HtcEntrySource.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbout()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090327

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020108

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0035

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "about"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getAccessibility()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030e

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020109

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c105b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.accessibility.AccessibilitySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "accessibility"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getAccountAndSync()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090309

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0171

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.accounts.ManageAccounts"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "account and sync"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getActivateDevice()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 8

    new-instance v4, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v4}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v5, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v6, 0x7f090325

    iput-wide v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v6, 0x7f020146

    iput v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v6, 0x7f0c0118

    iput v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.sprint.dsa.source"

    const-string v7, "menu"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v2, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    :goto_0
    const-string v5, "activate device"

    iput-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v4

    :cond_0
    sget-object v5, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->TAG:Ljava/lang/String;

    const-string v6, "no such activity!"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAirplaneMode()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902f9

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    const-string v1, "airplane mode"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getAppAssociation()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031b

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020148

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c09ed

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.applications.HtcAppAssociationsSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "app association"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getApps()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031a

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getAppsTitleResId()I

    move-result v2

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.applications.ManageApplications"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "apps"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBackupAndReset()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030f

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1171

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.PrivacySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "backup and reset"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBackupAssistantPlus()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 9

    const-string v0, "com.htc.vmmRemoved"

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v5}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v6, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v7, 0x7f09030a

    iput-wide v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    :try_start_0
    const-string v6, "com.htc.vmmRemoved"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v7, "com.htc.vmmRemoved"

    iput-object v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v7, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v7, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.htc.vmm.settings.Backup"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v6, "backup assistant plus"

    iput-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v5

    :catch_0
    move-exception v3

    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v7, 0x7f02026d

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v7, 0x7f0c0119

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_0
.end method

.method public static getBeatsAudio()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090313

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02014d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x2040249

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    const-string v1, "beats audio"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBluetooth()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fe

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0cb4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.bluetooth.BluetoothSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "bluetooth"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBoomSound()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090316

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0114

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const-string v1, "boomsound"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getCall()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090318

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020117

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, "call"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getCharm()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090319

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200a3

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0147

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.charm.HtcCharmSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "charm"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDataUsage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090301

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020121

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1217

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.usage"

    const-string v4, "com.htc.usage.DataUsageSummaryActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDateAndTime()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090321

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c3d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DateTimeSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "date and time"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDevelopment()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090324

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1029

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DevelopmentSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "developer options"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDeviceCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0108

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDisplay()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090311

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020110

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0152

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DisplaySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "display"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDualNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090304

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a21

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0034

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02026e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

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

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.dualmode.RoamingSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    :cond_1
    const-string v1, "dual network"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getFingerprint()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090312

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02024d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0230

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.fingerprint.HtcFingerprintSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "fingerprint"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getHarman()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090317

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200dc

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0115

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const-string v1, "harman"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getHtcMini()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902ff

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020112

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0aee

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    const-string v1, "htc mini+"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInfrared()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fd

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02026b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    const-string v1, "infrared"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLanguage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090320

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020111

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c02e4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.inputmethod.InputMethodAndLanguageSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "language"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLocation()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030b

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020113

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0175

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.location.LocationSetting"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "location"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getManufacturer()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031c

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, "manufacturer"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getMediaLink()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090302

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020120

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c011c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, "media link"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getMobileNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090300

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020114

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c039a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.Settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, "mobile network"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getMore()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090305

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020115

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x20402b0

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c31

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "more"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getOperator()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090303

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0cb4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, "operator"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPersonalCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0109

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPersonalize()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090306

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020116

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0587

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.personalize.ACTION_HOMEPERSONALIZE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, "personalize"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPhoneCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c10d2

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPower()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031e

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020119

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0829

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.Power"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "power"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method static getPrinting()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090323

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1095

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.print.PrintSettingsFragment"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "printing"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSecurity()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030d

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c5f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.SecuritySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "security"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method static getSkyfireToolbar()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090307

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020259

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0ae1

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

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

    const-string v1, "personalize"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSound()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090314

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0de4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.SoundSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "sound"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getStorage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031d

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020118

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0e4e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.deviceinfo.Memory"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "storage"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSystemCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getTransferMyStuff()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090310

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a5f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a61

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-class v2, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "transfer my stuff"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getUmc()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090315

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200e7

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0112

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.UMC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, "umc"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getUser()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090308

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02025a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1294

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.users.UserSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "user"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method static getVoWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fb

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200ab

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0b20

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.wifi.VoWifiSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "vowifi"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fa

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020122

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0d2c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.wifi.WifiSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "wifi"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getWirelessCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0107

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    return-object v0
.end method

.method public static updateActivateDevice(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintBoostSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_1
    return-void
.end method

.method public static updateAppAssociation(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    return-void
.end method

.method public static updateBackupAndReset(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2

    const-string v0, "com.htc.backupreset"

    const-string v1, "com.htc.backupreset"

    invoke-static {p0, v1}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method public static updateBackupAssistantPlus(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateBeatsAudio(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateBluetooth(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateBoomSound(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateCall(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcCallFeatureFlags;->supportCallEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateCharm(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charm_indicator_supported"

    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v3, 0x4080

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_1
    return-void
.end method

.method public static updateDevelopment(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDeveloperFeatureFlags;->supportShowDeveloperByDefault()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "development"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v4, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->TAG:Ljava/lang/String;

    const-string v5, "updateDevelopment, unabled to get development shared preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    return-void

    :cond_2
    const-string v4, "show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

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

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static updateDisplay(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4

    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGestures(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v0

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0153

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0154

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0155

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    :cond_2
    return-void
.end method

.method public static updateDualNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

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

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_1
    return-void
.end method

.method public static updateFingerprint(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method public static updateHarman(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateHtcMini(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHtcMiniPlus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method public static updateInfrared(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcInfraredFeatureFlags;->supportInfraredEntry(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateMediaLink(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-boolean v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateMobileNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateOperator(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/activity/HtcWrapHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updatePersonalize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isIddaDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updateSkyfireToolbar(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method public static updateTransferMyStuff(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 0

    return-void
.end method

.method public static updateUmc(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->isSupportMusicChannel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateUser(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcUserFeatureFlags;->supportUserSetting()Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x0

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

    invoke-static {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->isSupportVoWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method

.method public static updateWifi(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :cond_0
    return-void
.end method
