.class public Lcom/android/settings/Settings;
.super Lcom/android/settings/HtcAbsSettings;
.source "Settings.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;
.implements Lcom/htc/widget/IDividerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$VoWifiSettingsActivity;,
        Lcom/android/settings/Settings$PaymentSettingsActivity;,
        Lcom/android/settings/Settings$HtcFontSimpleSettingsActivity;,
        Lcom/android/settings/Settings$HtcDndSettingsActivity;,
        Lcom/android/settings/Settings$HtcFingerPrintQuickLaunchActivity;,
        Lcom/android/settings/Settings$HtcFingerprintSettingsActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneHelpActivity;,
        Lcom/android/settings/Settings$HtcEncryptionPageActivity;,
        Lcom/android/settings/Settings$HtcCharmSettingsActivity;,
        Lcom/android/settings/Settings$SetFullBackupPasswordActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneMasterClearActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneSoftwareInfoActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneIdentityActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneHardwareInfoActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettings;,
        Lcom/android/settings/Settings$PrintSettingsActivity;,
        Lcom/android/settings/Settings$TrustedCredentialsSettingsActivity;,
        Lcom/android/settings/Settings$Power;,
        Lcom/android/settings/Settings$ChooseLockGenericActivity;,
        Lcom/android/settings/Settings$UserSettingsActivity;,
        Lcom/android/settings/Settings$AppOpsSummaryActivity;,
        Lcom/android/settings/Settings$NotificationStationActivity;,
        Lcom/android/settings/Settings$NotificationAccessSettingsActivity;,
        Lcom/android/settings/Settings$DreamSettingsActivity;,
        Lcom/android/settings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/settings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsInAddAccountActivity;,
        Lcom/android/settings/Settings$ManageAccountsActivity;,
        Lcom/android/settings/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings/Settings$RunningServicesActivity;,
        Lcom/android/settings/Settings$HtcMasterClearActivity;,
        Lcom/android/settings/Settings$HtcTransferMyStuffSetupWizardSettingsActivity;,
        Lcom/android/settings/Settings$HtcTransferMyStuffSettingsActivity;,
        Lcom/android/settings/Settings$PrivacySettingsActivity;,
        Lcom/android/settings/Settings$LocationSettingsActivity;,
        Lcom/android/settings/Settings$SecuritySettingsActivity;,
        Lcom/android/settings/Settings$CaptioningSettingsActivity;,
        Lcom/android/settings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings/Settings$StorageUseActivity;,
        Lcom/android/settings/Settings$ManageApplicationsActivity;,
        Lcom/android/settings/Settings$ApplicationSettingsActivity;,
        Lcom/android/settings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings/Settings$DisplaySettingsActivity;,
        Lcom/android/settings/Settings$SoundSettingsActivity;,
        Lcom/android/settings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings/Settings$LocalePickerActivity;,
        Lcom/android/settings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings/Settings$InputMethodAndSubtypeEnablerActivity;,
        Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings/Settings$WifiSettingsActivity;,
        Lcom/android/settings/Settings$UsbSettingsActivity;,
        Lcom/android/settings/Settings$StorageSettingsActivity;,
        Lcom/android/settings/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings/Settings$VpnSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity;,
        Lcom/android/settings/Settings$WirelessSettingsActivity;,
        Lcom/android/settings/Settings$BluetoothSettingsActivity;
    }
.end annotation


# static fields
.field private static final EXTRA_UI_OPTIONS:Ljava/lang/String; = "settings:ui_options"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final META_DATA_KEY_HEADER_ID:Ljava/lang/String; = "com.android.settings.TOP_LEVEL_HEADER_ID"

.field private static final META_DATA_KEY_PARENT_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_CLASS"

.field private static final META_DATA_KEY_PARENT_TITLE:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_TITLE"

.field private static final SAVE_KEY_CURRENT_HEADER:Ljava/lang/String; = "com.android.settings.CURRENT_HEADER"

.field private static final SAVE_KEY_HTC_CURRENT_HEADER:Ljava/lang/String; = "com.android.settings.HTC_CURRENT_HEADER"

.field private static final SAVE_KEY_PARENT_HEADER:Ljava/lang/String; = "com.android.settings.PARENT_HEADER"


# instance fields
.field private mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field private mHasLoadedEntries:Z

.field private mInLocalHeaderSwitch:Z

.field private mIsFinishWindowFocusChanged:Z

.field private mIsFirstLaunch:Z

.field private mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mPreparedWrapHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeId:I

.field private mTopLevelHeaderId:I

.field private final mWrapHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/HtcAbsSettings;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mHasLoadedEntries:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    .line 289
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mIsFinishWindowFocusChanged:Z

    .line 939
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/Settings;->syncWrapHeaders()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/Settings;)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 652
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 669
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 653
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 654
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 657
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 658
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 660
    new-instance v3, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v3}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 661
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v1, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 662
    if-eqz v2, :cond_0

    .line 663
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader()V
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-eqz v0, :cond_0

    .line 516
    :cond_0
    return-void
.end method

.method private initFirstHeader(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/HtcWrapHeader;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 632
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 633
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 635
    .local v0, header:Lcom/android/settings/framework/activity/HtcWrapHeader;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 637
    iget-object v3, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    sget-object v4, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    sget-object v4, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    if-eq v3, v4, :cond_0

    .line 640
    iget-object v3, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v3, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 632
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v0           #header:Lcom/android/settings/framework/activity/HtcWrapHeader;
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 788
    const-string v0, "Settings"

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method private postToSyncWrapHeaders()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method private switchToHeaderLocal(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 436
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 460
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 463
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 465
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 466
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 468
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v4}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 469
    .local v4, parentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iput-object v1, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 470
    iput-object v2, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 471
    iput-object v4, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 473
    invoke-direct {p0, v4}, Lcom/android/settings/Settings;->switchToHeaderLocal(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 474
    invoke-direct {p0}, Lcom/android/settings/Settings;->highlightHeader()V

    .line 476
    new-instance v7, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v7}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 477
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 479
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v3

    .line 482
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized syncWrapHeaders()V
    .locals 4

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 177
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> syncWrapHeaders()\n - mWrapHeaders.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - mPreparedWrapHeaders.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/Settings;->log(Ljava/lang/String;)V

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, N:I
    iget-object v2, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_4

    .line 192
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_3

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/Settings;->log(Ljava/lang/String;)V

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 199
    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 200
    iget-object v2, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 202
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 203
    iget-object v2, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 206
    :cond_6
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_7

    .line 207
    const-string v2, "<< syncWrapHeaders()"

    invoke-direct {p0, v2}, Lcom/android/settings/Settings;->log(Ljava/lang/String;)V

    .line 211
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 172
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getDividerType(I)I
    .locals 7
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 748
    .local v0, count:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_2

    :cond_0
    move v3, v4

    .line 783
    :cond_1
    :goto_0
    return v3

    .line 755
    :cond_2
    add-int/lit8 v5, v0, -0x1

    if-eq p1, v5, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 762
    .local v1, curHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    if-nez v1, :cond_3

    move v3, v4

    .line 763
    goto :goto_0

    .line 767
    :cond_3
    iget-object v5, v1, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    sget-object v6, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    if-ne v5, v6, :cond_4

    move v3, v4

    .line 768
    goto :goto_0

    .line 771
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 774
    .local v2, nextHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    if-eqz v2, :cond_1

    .line 779
    iget-object v5, v2, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    sget-object v6, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    if-ne v5, v6, :cond_1

    move v3, v4

    .line 780
    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 520
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 521
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 525
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 526
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 528
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 533
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 534
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 537
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 531
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 537
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 678
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 557
    :cond_0
    :goto_0
    return-object v0

    .line 547
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, intentClass:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 673
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isSubSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mHasLoadedEntries:Z

    .line 127
    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->init()V

    .line 128
    invoke-static {p0}, Lcom/android/settings/framework/activity/HtcEntryManager;->setEntryChangedListener(Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;)V

    .line 130
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/HtcAbsSettings;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 131
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    new-instance v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v0}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isSinglePane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->getPartialWrapHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->initFirstHeader(Ljava/util/ArrayList;)V

    .line 628
    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 2
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 588
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/HtcAbsSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 612
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 613
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isSubSettings()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/Settings;->mHasLoadedEntries:Z

    if-nez v0, :cond_0

    .line 221
    iput-boolean v5, p0, Lcom/android/settings/Settings;->mHasLoadedEntries:Z

    .line 223
    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->init()V

    .line 224
    invoke-static {p0}, Lcom/android/settings/framework/activity/HtcEntryManager;->setEntryChangedListener(Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:ui_options"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "settings:ui_options"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/Settings;->getMetaData()V

    .line 232
    iput-boolean v5, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 233
    invoke-super {p0, p1}, Lcom/android/settings/HtcAbsSettings;->onCreate(Landroid/os/Bundle;)V

    .line 234
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 238
    invoke-static {p0, v3}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/Settings;->mThemeId:I

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/android/settings/Settings;->highlightHeader()V

    .line 244
    const v0, 0x7f0c0c2c

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->setTitle(I)V

    .line 248
    :cond_2
    if-eqz p1, :cond_3

    .line 249
    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 250
    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isSinglePane()Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    const-string v0, "com.android.settings.HTC_CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 256
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 265
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/Settings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$2;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/settings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 794
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->onDestroy()V

    .line 795
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->dismissDeveloperWarningDialog()V

    .line 796
    return-void
.end method

.method public onEntriesFinished(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, inWrapHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/HtcWrapHeader;>;"
    iput-object p1, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    .line 137
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEntriesFinished(): size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mIsFinishWindowFocusChanged:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/settings/Settings;->postToSyncWrapHeaders()V

    .line 153
    :cond_1
    return-void
.end method

.method public onGetInitialHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 3

    .prologue
    .line 566
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 568
    new-instance v1, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v1}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 569
    .local v1, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 572
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 574
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 582
    .end local v1           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :goto_0
    return-object v1

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v2, p0, Lcom/android/settings/Settings;->mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 582
    iget-object v1, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    goto :goto_0
.end method

.method protected onListItemClick(Ljava/lang/Object;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 694
    .local v5, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onListItemClick: #(adaptor): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onListItemClick: #(wrapHeaders): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->mPreparedWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onListItemClick: position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 703
    const-string v0, "onListItemClick"

    invoke-static {v0, v5}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    :cond_0
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p0

    .line 707
    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->delegrateOnListItemClick(Ljava/lang/Object;Landroid/view/View;IJLcom/android/settings/framework/activity/HtcWrapHeader;Lcom/htc/preference/HtcPreferenceActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    :goto_1
    return-void

    .line 698
    :cond_1
    const-string v0, "not ready yet"

    goto :goto_0

    .line 717
    :cond_2
    :try_start_0
    iget-object v0, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p0, v0, p3}, Lcom/android/settings/Settings;->onHeaderClick(Lcom/htc/preference/HtcPreferenceActivity$Header;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_2
    iget-object v0, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    goto :goto_1

    .line 718
    :catch_0
    move-exception v7

    .line 719
    .local v7, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 720
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity found for header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 488
    invoke-super {p0, p1}, Lcom/android/settings/HtcAbsSettings;->onNewIntent(Landroid/content/Intent;)V

    .line 491
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->switchToHeaderLocal(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    .line 497
    :cond_1
    return-void
.end method

.method public onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    const/4 v4, 0x0

    .line 734
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getTitleRes()I

    move-result v3

    .line 735
    .local v3, titleRes:I
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    const v3, 0x7f0c0e1b

    .line 741
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 742
    const/4 v0, 0x1

    return v0

    .line 737
    :cond_1
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const v3, 0x7f0c0c5b

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->onRestart()V

    .line 346
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/android/settings/Settings;->highlightHeader()V

    .line 359
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 384
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->onResume()V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isSubSettings()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    if-eqz v3, :cond_2

    .line 396
    iget-object v3, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-object v3, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->getPartialWrapHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 398
    new-instance v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;

    iget-object v3, p0, Lcom/android/settings/Settings;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/framework/activity/HtcHeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 399
    .local v0, adapter:Lcom/android/settings/framework/activity/HtcHeaderAdapter;
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcListView;->setDividerController(Lcom/htc/widget/IDividerController;)V

    .line 410
    sput-object v5, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->sThemeOverlayColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 413
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: adapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 421
    .end local v0           #adapter:Lcom/android/settings/framework/activity/HtcHeaderAdapter;
    :cond_2
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    .line 422
    .local v2, themeId:I
    iget v3, p0, Lcom/android/settings/Settings;->mThemeId:I

    if-eq v2, v3, :cond_3

    const/4 v1, 0x1

    .line 423
    .local v1, isThemeChanged:Z
    :cond_3
    if-eqz v1, :cond_0

    .line 424
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_4

    .line 425
    const-string v3, "onResume: isThemeChanged, reset the color filter"

    invoke-static {v3}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 427
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->setTheme(I)V

    .line 428
    sput-object v5, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->sThemeOverlayColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/android/settings/HtcAbsSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 371
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_2

    .line 376
    const-string v0, "com.android.settings.HTC_CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mCurrentSelectedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 380
    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isSubSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> onWindowFocusChanged, hasFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFirstLaunch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 304
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/Settings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$3;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mIsFinishWindowFocusChanged:Z

    .line 320
    invoke-direct {p0}, Lcom/android/settings/Settings;->postToSyncWrapHeaders()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    .line 326
    :cond_3
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< onWindowFocusChanged, hasFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFirstLaunch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/android/settings/HtcAbsSettings;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 453
    return-void
.end method
