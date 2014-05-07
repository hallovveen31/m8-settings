.class public Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;
.super Ljava/lang/Object;
.source "HtcWrapHeaderInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAbout()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 1136
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1137
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1138
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090327

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 1139
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020108

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1140
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0035

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1141
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1143
    const-string v1, "about"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 1144
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1145
    return-object v0
.end method

.method static getAccessibility()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 573
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 574
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 575
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030e

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 576
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020109

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 577
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c105b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 578
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.accessibility.AccessibilitySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 579
    const-string v1, "accessibility"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 580
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 581
    return-object v0
.end method

.method static getAccountAndSync()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 494
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 495
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 496
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090309

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 497
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 498
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0171

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 499
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.accounts.ManageAccounts"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 500
    const-string v1, "account and sync"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 501
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 502
    return-object v0
.end method

.method static getActivateDevice()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 8

    .prologue
    .line 1094
    new-instance v4, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v4}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1095
    .local v4, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v5, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1096
    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v6, 0x7f090325

    iput-wide v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 1097
    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v6, 0x7f020146

    iput v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1098
    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v6, 0x7f0c0118

    iput v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1099
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
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

    .line 1113
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1114
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1115
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1116
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1117
    iget-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v2, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 1121
    :goto_0
    const-string v5, "activate device"

    iput-object v5, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 1122
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1123
    return-object v4

    .line 1119
    :cond_0
    sget-object v5, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->TAG:Ljava/lang/String;

    const-string v6, "no such activity!"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getAirplaneMode()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 76
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 77
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902f9

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 78
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 79
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 80
    const-string v1, "airplane mode"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 82
    return-object v0
.end method

.method static getAppAssociation()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 913
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 914
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 915
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031b

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 916
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020148

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 917
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c09ed

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 918
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.applications.HtcAppAssociationsSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 920
    const-string v1, "app association"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 921
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 922
    return-object v0
.end method

.method static getApps()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 826
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 827
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 828
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031a

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 829
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 830
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getAppsTitleResId()I

    move-result v2

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 831
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.applications.ManageApplications"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 833
    const-string v1, "apps"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 834
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 835
    return-object v0
.end method

.method static getBackupAndReset()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 586
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 587
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 588
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030f

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 589
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 590
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1171

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 591
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.PrivacySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 592
    const-string v1, "backup and reset"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 593
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 594
    return-object v0
.end method

.method static getBackupAssistantPlus()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 9

    .prologue
    .line 508
    const-string v0, "com.htc.vmmRemoved"

    .line 509
    .local v0, PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 510
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 513
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v5}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 514
    .local v5, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v6, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 515
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v7, 0x7f09030a

    iput-wide v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 519
    :try_start_0
    const-string v6, "com.htc.vmmRemoved"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 520
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v7, "com.htc.vmmRemoved"

    iput-object v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 521
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 522
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
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

    .line 531
    const-string v6, "backup assistant plus"

    iput-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 532
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 533
    return-object v5

    .line 523
    :catch_0
    move-exception v3

    .line 525
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v7, 0x7f02026d

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 526
    iget-object v6, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v7, 0x7f0c0119

    iput v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_0
.end method

.method static getBeatsAudio()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 680
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 681
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 682
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090313

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 683
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02014d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 684
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x2040249

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 685
    const-string v1, "beats audio"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 686
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 687
    return-object v0
.end method

.method static getBluetooth()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 156
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 157
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fe

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 158
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 159
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0cb4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 160
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.bluetooth.BluetoothSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 161
    const-string v1, "bluetooth"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 163
    return-object v0
.end method

.method static getBoomSound()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 721
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 722
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 723
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090316

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 724
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200cf

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 725
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0114

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 726
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 727
    const-string v1, "boomsound"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 728
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 729
    return-object v0
.end method

.method static getCall()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 775
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 776
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 777
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090318

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 778
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020117

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 779
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 780
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 783
    const-string v1, "call"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 784
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 785
    return-object v0
.end method

.method static getCharm()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 798
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 799
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 800
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090319

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 801
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200a3

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 802
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0147

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 803
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.charm.HtcCharmSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 805
    const-string v1, "charm"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 806
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 807
    return-object v0
.end method

.method static getDataUsage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 213
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 214
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 215
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090301

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 216
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020121

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 217
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1217

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 218
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.usage"

    const-string v4, "com.htc.usage.DataUsageSummaryActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 223
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 224
    return-object v0
.end method

.method static getDateAndTime()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 1016
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1017
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1018
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090321

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 1019
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1020
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c3d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1021
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DateTimeSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1022
    const-string v1, "date and time"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 1023
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1024
    return-object v0
.end method

.method static getDevelopment()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 1062
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1063
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1064
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090324

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 1065
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02010f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1066
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1029

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1067
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DevelopmentSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1068
    const-string v1, "developer options"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 1069
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1070
    return-object v0
.end method

.method static getDeviceCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 1153
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1154
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1155
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0108

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1156
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1157
    return-object v0
.end method

.method static getDisplay()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 648
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 649
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 650
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090311

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 651
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020110

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 652
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0152

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 653
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.DisplaySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 654
    const-string v1, "display"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 655
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 656
    return-object v0
.end method

.method static getDualNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 288
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 289
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 290
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090304

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 291
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 292
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a21

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 294
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0034

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 298
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02026e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 301
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

    .line 303
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

    .line 307
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.dualmode.RoamingSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 312
    :cond_1
    const-string v1, "dual network"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 313
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 314
    return-object v0
.end method

.method public static getFingerprint()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 869
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 870
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 871
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090312

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 872
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02024d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 873
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0230

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 874
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.framework.activity.fingerprint.HtcFingerprintSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 875
    const-string v1, "fingerprint"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 876
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 877
    return-object v0
.end method

.method static getHarman()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 741
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 742
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 743
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090317

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 744
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200dc

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 745
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0115

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 746
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 747
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.HarmanSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 748
    const-string v1, "harman"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 749
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 750
    return-object v0
.end method

.method public static getHtcMini()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 890
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 891
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 892
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902ff

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 893
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020112

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 894
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0aee

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 898
    const-string v1, "htc mini+"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 899
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 900
    return-object v0
.end method

.method static getInfrared()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 138
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 139
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fd

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 140
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02026b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 141
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 142
    const-string v1, "infrared"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 144
    return-object v0
.end method

.method static getLanguage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 1002
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1003
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1004
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090320

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 1005
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020111

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1006
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c02e4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1007
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.inputmethod.InputMethodAndLanguageSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1009
    const-string v1, "language"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 1010
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1011
    return-object v0
.end method

.method static getLocation()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 547
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 548
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 549
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030b

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 550
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020113

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 551
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0175

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 552
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.location.LocationSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 553
    const-string v1, "location"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 554
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 555
    return-object v0
.end method

.method static getManufacturer()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 962
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 963
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 964
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031c

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 965
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 967
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 969
    const-string v1, "manufacturer"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 970
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 971
    return-object v0
.end method

.method static getMediaLink()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 229
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 230
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 231
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090302

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 232
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020120

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 234
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c011c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 236
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 237
    const-string v1, "media link"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 239
    return-object v0
.end method

.method static getMobileNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 177
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 178
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 179
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090300

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 180
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020114

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 184
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c039a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 192
    :goto_0
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 193
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.Settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 198
    const-string v1, "mobile network"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 200
    return-object v0

    .line 187
    :cond_0
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c039b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_0
.end method

.method static getMore()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 332
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 333
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 334
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090305

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 335
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020115

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 336
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x20402b0

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 337
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c31

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 338
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 339
    const-string v1, "more"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 340
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 341
    return-object v0
.end method

.method static getMoreSummary(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "wrapHeader"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->TODO:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .end annotation

    .prologue
    .line 354
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .local v2, summaryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-nez v3, :cond_0

    .line 368
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 369
    const v0, 0x7f0c0b07

    .line 370
    .local v0, resId:I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v0           #resId:I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->supportHtcMiniPlus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    const v0, 0x7f0c0aee

    .line 380
    .restart local v0       #resId:I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v0           #resId:I
    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->supportNfc(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 385
    const v0, 0x7f0c0d1e

    .line 386
    .restart local v0       #resId:I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v0           #resId:I
    :cond_2
    const v0, 0x7f0c054f

    .line 391
    .restart local v0       #resId:I
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 392
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_1
    const v0, 0x7f0c1156

    .line 399
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 416
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 372
    .end local v0           #resId:I
    :cond_3
    const v0, 0x7f0c1217

    .line 373
    .restart local v0       #resId:I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    :pswitch_0
    const v0, 0x7f0c0101

    .line 418
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, summary:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v1, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    return-object v1

    .line 410
    .end local v1           #summary:Ljava/lang/String;
    :pswitch_1
    const v0, 0x7f0c0101

    .line 411
    goto :goto_2

    .line 413
    :pswitch_2
    const v0, 0x7f0c0100

    .line 414
    goto :goto_2

    .line 402
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getOperator()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 261
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 262
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 263
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090303

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 264
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0cb4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 265
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.WirelessSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 266
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 268
    const-string v1, "operator"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 269
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 270
    return-object v0
.end method

.method static getPersonalCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 427
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 428
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 429
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0109

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 430
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 431
    return-object v0
.end method

.method static getPersonalize()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 437
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 438
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 439
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090306

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 440
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020116

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 441
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0587

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 442
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.personalize.ACTION_HOMEPERSONALIZE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 444
    const-string v1, "personalize"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 445
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 446
    return-object v0
.end method

.method static getPhoneCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 638
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 639
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 640
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c10d2

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 641
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 642
    return-object v0
.end method

.method static getPower()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 989
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 990
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 991
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031e

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 992
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020119

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 993
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0829

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 994
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.Power"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 995
    const-string v1, "power"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 996
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 997
    return-object v0
.end method

.method static getPrinting()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 1029
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1030
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1031
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090323

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 1032
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1033
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1095

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1034
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.print.PrintSettingsFragment"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1035
    const-string v1, "printing"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 1036
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1037
    return-object v0
.end method

.method static getSecurity()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 560
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 561
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 562
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09030d

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 563
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011b

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 564
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0c5f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 565
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.SecuritySettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 566
    const-string v1, "security"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 567
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 568
    return-object v0
.end method

.method static getSkyfireToolbar()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 5

    .prologue
    .line 468
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 469
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 470
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090307

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 471
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020259

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 472
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0ae1

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 473
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

    .line 477
    const-string v1, "personalize"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 478
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 479
    return-object v0
.end method

.method static getSound()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 762
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 763
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 764
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090314

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 765
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011d

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 766
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0de4

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 767
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.SoundSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 768
    const-string v1, "sound"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 769
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 770
    return-object v0
.end method

.method static getStorage()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 976
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 977
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 978
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f09031d

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 979
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020118

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 980
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0e4e

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 981
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.deviceinfo.Memory"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 982
    const-string v1, "storage"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 983
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 984
    return-object v0
.end method

.method static getSystemCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 1166
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 1167
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 1168
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c010a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1169
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 1170
    return-object v0
.end method

.method static getTransferMyStuff()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 610
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 611
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 612
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090310

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 613
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02011f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 614
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a5f

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 615
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0a61

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    .line 616
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-class v2, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 617
    const-string v1, "transfer my stuff"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 618
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 619
    return-object v0
.end method

.method static getUmc()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 701
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 702
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 703
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090315

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 704
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200e7

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 705
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0112

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 706
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 707
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.UMC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 708
    const-string v1, "umc"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 709
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 710
    return-object v0
.end method

.method static getUser()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 840
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 841
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 842
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f090308

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 843
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f02025a

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 844
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c1294

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 845
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.users.UserSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 846
    const-string v1, "user"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 847
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 848
    return-object v0
.end method

.method static getVoWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 112
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 113
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fb

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 114
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0200ab

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 115
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0b20

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 116
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.wifi.VoWifiSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 117
    const-string v1, "vowifi"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 119
    return-object v0
.end method

.method static getWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 88
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 89
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v2, 0x7f0902fa

    iput-wide v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 90
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f020122

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 91
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0d2c

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 92
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-string v2, "com.android.settings.wifi.WifiSettings"

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 93
    const-string v1, "wifi"

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 95
    return-object v0
.end method

.method static getWirelessCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 67
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 68
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v2, 0x7f0c0107

    iput v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 69
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 70
    return-object v0
.end method

.method static updateActivateDevice(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 1127
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintBoostSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 1132
    :cond_1
    return-void
.end method

.method static updateAppAssociation(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 958
    return-void
.end method

.method static updateBackupAndReset(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 599
    const-string v0, "com.htc.backupreset"

    .line 601
    .local v0, HTC_BACKUP_PACKAGE:Ljava/lang/String;
    const-string v1, "com.htc.backupreset"

    invoke-static {p0, v1}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updateBackupAssistantPlus(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 539
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 541
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 543
    return-void

    .line 541
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static updateBeatsAudio(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 692
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 696
    :cond_0
    return-void
.end method

.method static updateBluetooth(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 173
    :cond_0
    return-void
.end method

.method static updateBoomSound(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 733
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBoomSoundFeatureFlags;->getBoomSoundSettingsVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 736
    :cond_0
    return-void
.end method

.method static updateCall(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 790
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcCallFeatureFlags;->supportCallEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 794
    :cond_0
    return-void
.end method

.method static updateCharm(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 5
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 812
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charm_indicator_supported"

    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 815
    .local v0, visibility:Z
    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 819
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v3, 0x4080

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    .line 820
    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 822
    :cond_1
    return-void
.end method

.method static updateDevelopment(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 7
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v3, 0x0

    .line 1074
    const/4 v2, 0x1

    .line 1075
    .local v2, visibility:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDeveloperFeatureFlags;->supportShowDeveloperByDefault()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1076
    const-string v4, "development"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1077
    .local v1, pref:Landroid/content/SharedPreferences;
    if-nez v1, :cond_2

    .line 1078
    sget-object v4, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->TAG:Ljava/lang/String;

    const-string v5, "updateDevelopment, unabled to get development shared preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 1090
    return-void

    .line 1080
    .restart local v1       #pref:Landroid/content/SharedPreferences;
    :cond_2
    const-string v4, "show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1081
    .local v0, bPrefShow:Z
    sget-object v4, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->TAG:Ljava/lang/String;

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

    .line 1083
    if-nez v0, :cond_0

    .line 1084
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static updateDisplay(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 662
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGestures(Landroid/content/Context;)Z

    move-result v1

    .line 663
    .local v1, gestures:Z
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v0

    .line 664
    .local v0, buttons:Z
    if-eqz v1, :cond_0

    .line 665
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0153

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 667
    :cond_0
    if-eqz v0, :cond_1

    .line 668
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0154

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 670
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 671
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const v3, 0x7f0c0155

    iput v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 676
    :cond_2
    return-void
.end method

.method static updateDualNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 319
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

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 328
    :cond_1
    return-void
.end method

.method public static updateFingerprint(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 881
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updateHarman(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 754
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 757
    :cond_0
    return-void
.end method

.method public static updateHtcMini(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 904
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHtcMiniPlus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 909
    :goto_0
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updateInfrared(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcInfraredFeatureFlags;->supportInfraredEntry(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 151
    :cond_0
    return-void
.end method

.method static updateMediaLink(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 4
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v3, 0x0

    .line 243
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 246
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 251
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 253
    iput-boolean v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 257
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-void
.end method

.method static updateMobileNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 205
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 209
    :cond_0
    return-void
.end method

.method static updateOperator(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"
    .parameter "outWrapHeaders"

    .prologue
    .line 275
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/activity/HtcWrapHeader;)Z

    move-result v0

    .line 279
    .local v0, plugin:Z
    if-eqz v0, :cond_0

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 282
    :cond_0
    return-void
.end method

.method static updatePersonalize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 459
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isIddaDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updatePrinting(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 3
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 1049
    invoke-static {p0}, Lcom/android/settings/framework/core/printing/HtcPrintingUtils;->getPrintingServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1051
    .local v1, size:I
    if-lez v1, :cond_0

    .line 1052
    const/4 v0, 0x0

    .line 1056
    .local v0, invisible:Z
    :goto_0
    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 1057
    invoke-static {v1}, Lcom/android/settings/framework/core/printing/HtcPrintingUtils;->setLastPrintingServiceSize(I)V

    .line 1058
    return-void

    .line 1054
    .end local v0           #invisible:Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #invisible:Z
    goto :goto_0
.end method

.method static updateSkyfireToolbar(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 484
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updateTransferMyStuff(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 624
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportTransferMyStuff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updateUmc(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 714
    invoke-static {}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->isSupportMusicChannel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 717
    :cond_0
    return-void
.end method

.method static updateUser(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 3
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v1, 0x1

    .line 852
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcUserFeatureFlags;->supportUserSetting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 853
    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 865
    :goto_0
    return-void

    .line 855
    :cond_0
    const/4 v0, 0x1

    .line 857
    .local v0, visibility:Z
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 860
    :cond_1
    const/4 v0, 0x0

    .line 863
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
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    const/4 v1, 0x1

    .line 124
    invoke-static {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->isSupportVoWifi(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-boolean v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0
.end method

.method static updateWifi(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "context"
    .parameter "wrapHeader"

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 105
    :cond_0
    return-void
.end method
