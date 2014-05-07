.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$FlingerOptions;,
        Lcom/android/settings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "allow_mock_location"

.field private static final ANIMATION_CATEGORY_KEY:Ljava/lang/String; = "animations_category"

.field private static final ANIMATION_KEY:Ljava/lang/String; = "pref_animation"

.field private static final ANIMATOR_DURATION_SCALE:I = 0x2

.field private static final ANIMATOR_DURATION_SCALE_KEY:Ljava/lang/String; = "animator_duration_scale"

.field private static final APP_CATEGORY_KEY:Ljava/lang/String; = "debug_applications_category"

.field private static final APP_PROCESS_LIMIT_KEY:Ljava/lang/String; = "app_process_limit"

.field private static final BT_HCI_SNOOP_LOG:Ljava/lang/String; = "bt_hci_snoop_log"

.field private static final BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final BUGREPORT_IN_POWER_KEY:Ljava/lang/String; = "bugreport_in_power"

.field private static final CLEAR_ADB_KEYS:Ljava/lang/String; = "clear_adb_keys"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEBUG_APP_KEY:Ljava/lang/String; = "debug_app"

.field private static final DEBUG_DEBUGGING_CATEGORY_KEY:Ljava/lang/String; = "debug_debugging_category"

.field private static final DEBUG_DRAWING_CATEGORY_KEY:Ljava/lang/String; = "debug_drawing_category"

.field private static final DEBUG_HW_OVERDRAW_KEY:Ljava/lang/String; = "debug_hw_overdraw"

.field private static final DEBUG_LAYOUT_KEY:Ljava/lang/String; = "debug_layout"

.field private static final DEBUG_MONITORING_CATEGORY_KEY:Ljava/lang/String; = "debug_monitoring_category"

.field private static final DISABLE_OVERLAYS_KEY:Ljava/lang/String; = "disable_overlays"

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final ENABLE_TERMINAL:Ljava/lang/String; = "enable_terminal"

.field private static final FORCE_HARDWARE_UI_KEY:Ljava/lang/String; = "force_hw_ui"

.field private static final FORCE_MSAA_KEY:Ljava/lang/String; = "force_msaa"

.field private static final FORCE_RTL_LAYOUT_KEY:Ljava/lang/String; = "force_rtl_layout_all_locales"

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_KEY:Ljava/lang/String; = "hdcp_checking"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final HTC_PERFORMANCE_MODE_KEY:Ljava/lang/String; = "htc_performance_mode"

.field private static final HTC_STRICT_MODE_KEY:Ljava/lang/String; = "htc_strict_mode"

.field private static final IMMEDIATELY_DESTROY_ACTIVITIES_KEY:Ljava/lang/String; = "immediately_destroy_activities"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final LOCAL_BACKUP_PASSWORD:Ljava/lang/String; = "local_backup_password"

.field private static final MSAA_PROPERTY:Ljava/lang/String; = "debug.egl.force_msaa"

.field private static final MSG_PREPARE_RESET_VALUE:I = 0x2

.field private static final MSG_UI_ENABLE:I = 0x1

.field private static final OPENGL_TRACES_KEY:Ljava/lang/String; = "enable_opengl_traces"

.field private static final OPENGL_TRACES_PROPERTY:Ljava/lang/String; = "debug.egl.trace"

.field private static final OVERLAY_DISPLAY_DEVICES_KEY:Ljava/lang/String; = "overlay_display_devices"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final POINTER_LOCATION_KEY:Ljava/lang/String; = "pointer_location"

.field public static final PREF_FILE:Ljava/lang/String; = "development"

.field public static final PREF_SHOW:Ljava/lang/String; = "show"

.field private static final PROCESS_STATS:Ljava/lang/String; = "proc_stats"

.field private static final RESET_VALUES_KEY:Ljava/lang/String; = "htc_developer_options_reset_values"

.field private static final RESULT_DEBUG_APP:I = 0x3e8

.field private static final SELECT_RUNTIME_KEY:Ljava/lang/String; = "select_runtime"

.field private static final SELECT_RUNTIME_PROPERTY:Ljava/lang/String; = "persist.sys.dalvik.vm.lib"

.field private static final SHOW_ALL_ANRS_KEY:Ljava/lang/String; = "show_all_anrs"

.field private static final SHOW_CPU_USAGE_KEY:Ljava/lang/String; = "show_cpu_usage"

.field private static final SHOW_HW_LAYERS_UPDATES_KEY:Ljava/lang/String; = "show_hw_layers_udpates"

.field private static final SHOW_HW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_hw_screen_udpates"

.field private static final SHOW_NON_RECTANGULAR_CLIP_KEY:Ljava/lang/String; = "show_non_rect_clip"

.field private static final SHOW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_screen_updates"

.field private static final SHOW_TOUCHES_KEY:Ljava/lang/String; = "show_touches"

.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "strict_mode"

.field private static final TAG:Ljava/lang/String; = "DevelopmentSettings"

.field private static final TAG_CONFIRM_ENFORCE:Ljava/lang/String; = "confirm_enforce"

.field private static final TERMINAL_APP_PACKAGE:Ljava/lang/String; = "com.android.terminal"

.field private static final TRACK_FRAME_TIME_KEY:Ljava/lang/String; = "track_frame_time"

.field private static final TRANSITION_ANIMATION_SCALE:I = 0x1

.field private static final TRANSITION_ANIMATION_SCALE_KEY:Ljava/lang/String; = "transition_animation_scale"

.field private static final VERIFY_APPS_OVER_USB_KEY:Ljava/lang/String; = "verify_apps_over_usb"

.field private static final WAIT_FOR_DEBUGGER_KEY:Ljava/lang/String; = "wait_for_debugger"

.field private static final WIFI_DISPLAY_CERTIFICATION_KEY:Ljava/lang/String; = "wifi_display_certification"

.field private static final WINDOW_ANIMATION_SCALE:I = 0x0

.field private static final WINDOW_ANIMATION_SCALE_KEY:Ljava/lang/String; = "window_animation_scale"

.field private static final mResetValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAdvanceValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBugreport:Lcom/htc/preference/HtcPreference;

.field private mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mClearAdbKeys:Lcom/htc/preference/HtcPreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Lcom/htc/preference/HtcPreference;

.field private mDialogClicked:Z

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

.field private mHaveDebugSettings:Z

.field private mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mLastEnabledState:Z

.field private mPassword:Lcom/htc/preference/HtcPreferenceScreen;

.field private mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

.field private mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mProcessStats:Lcom/htc/preference/HtcPreferenceScreen;

.field private final mResetCbPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWaitForDebugger:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWifiDisplayCertification:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 246
    const-string v0, "restrictions_pin_set"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DevelopmentSettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DevelopmentSettings;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateRuntimeValue()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    return v0
.end method

.method private currentRuntimeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    const-string v0, "persist.sys.dalvik.vm.lib"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 882
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 886
    .local v0, enabled:Z
    :goto_0
    return v1

    .line 885
    .end local v0           #enabled:Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 886
    .restart local v0       #enabled:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1527
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1529
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1532
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1533
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1535
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1536
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1537
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1539
    :cond_2
    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 363
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 365
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    new-instance v1, Lcom/android/settings/framework/preference/developer/HtcDeveloperAdvancePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/developer/HtcDeveloperAdvancePreference;-><init>(Landroid/content/Context;)V

    .line 366
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->addCallback(Ljava/lang/Object;)V

    .line 368
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->requestHandlers()V

    .line 371
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 820
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v4

    .line 823
    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 827
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .local v3, verification:Landroid/content/Intent;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 830
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 831
    .local v2, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 835
    goto :goto_0
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 383
    .local v0, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-nez v0, :cond_0

    .line 384
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v1, "keep_screen_on"

    if-ne p1, v1, :cond_1

    .line 394
    :goto_0
    return-object v0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 1658
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1660
    :cond_0
    :goto_0
    return v1

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private prepareResetValue()V
    .locals 25

    .prologue
    .line 1915
    sget-boolean v21, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v21, :cond_0

    .line 1916
    const-string v21, "DevelopmentSettings"

    const-string v22, ">> prepareResetValue()"

    invoke-static/range {v21 .. v22}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_0
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    if-gtz v21, :cond_2

    .line 1920
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    monitor-enter v22

    .line 1921
    :try_start_0
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    if-gtz v21, :cond_1

    .line 1923
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 1926
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "enable_adb"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "bugreport_in_power"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "verify_apps_over_usb"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "wifi_display_certification"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "keep_screen_on"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "allow_mock_location"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "bt_hci_snoop_log"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "debug_app"

    const-string v24, "null"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "wait_for_debugger"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "strict_mode"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "htc_strict_mode"

    const-string v24, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "pointer_location"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_touches"

    const-string v24, "fasle"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_screen_updates"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "disable_overlays"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_cpu_usage"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "force_hw_ui"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "force_msaa"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "track_frame_time"

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_non_rect_clip"

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_hw_screen_udpates"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_hw_layers_udpates"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "debug_hw_overdraw"

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "debug_layout"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "force_rtl_layout_all_locales"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "window_animation_scale"

    const-string v24, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "transition_animation_scale"

    const-string v24, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "animator_duration_scale"

    const-string v24, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "overlay_display_devices"

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "enable_opengl_traces"

    const-string v24, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "immediately_destroy_activities"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "app_process_limit"

    const-string v24, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_all_anrs"

    const-string v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    :cond_1
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "htc_developer_options_reset_values"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1971
    .local v6, defaultValueStr:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1972
    sget-boolean v21, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v21, :cond_3

    .line 1973
    const-string v21, "DevelopmentSettings"

    const-string v22, "Initialize reset value in the first time."

    invoke-static/range {v21 .. v22}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1976
    .local v3, activity:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1978
    .local v5, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()Lcom/android/settings/DevelopmentSettings$FlingerOptions;

    move-result-object v8

    .line 1981
    .local v8, flingerOptions:Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "enable_adb"

    const-string v21, "adb_enabled"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    :goto_0
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "keep_screen_on"

    const-string v21, "stay_on_while_plugged_in"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_7

    const/16 v21, 0x1

    :goto_1
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "allow_mock_location"

    const-string v21, "mock_location"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    :goto_2
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "debug_app"

    const-string v23, "debug_app"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "wait_for_debugger"

    const-string v21, "wait_for_debugger"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x1

    :goto_3
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "strict_mode"

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v21

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_4
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "htc_strict_mode"

    const-string v23, "strict_mode"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_touches"

    const-string v21, "show_touches"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    :goto_5
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_screen_updates"

    iget v0, v8, Lcom/android/settings/DevelopmentSettings$FlingerOptions;->mShowUpdates:I

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    :goto_6
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "disable_overlays"

    iget v0, v8, Lcom/android/settings/DevelopmentSettings$FlingerOptions;->mDisableOverlays:I

    move/from16 v21, v0

    if-eqz v21, :cond_d

    const/16 v21, 0x1

    :goto_7
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_cpu_usage"

    const-string v21, "show_processes"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_e

    const/16 v21, 0x1

    :goto_8
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "force_hw_ui"

    const-string v23, "persist.sys.ui.hw"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "force_msaa"

    const-string v23, "debug.egl.force_msaa"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "show_hw_screen_udpates"

    const-string v23, "debug.hwui.show_dirty_regions"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "show_hw_layers_udpates"

    const-string v23, "debug.hwui.show_layers_updates"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "debug_layout"

    const-string v23, "debug.layout"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    const/high16 v21, 0x3f80

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    .line 2033
    .local v20, windowAnimation:Ljava/lang/Float;
    const/high16 v21, 0x3f80

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 2034
    .local v16, transitionAnimation:Ljava/lang/Float;
    const/high16 v21, 0x3f80

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 2036
    .local v4, animatorDuration:Ljava/lang/Float;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 2043
    :goto_9
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "window_animation_scale"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "transition_animation_scale"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "animator_duration_scale"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    const-string v21, "overlay_display_devices"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2055
    .local v13, overlayValue:Ljava/lang/String;
    if-nez v13, :cond_4

    .line 2056
    const-string v13, ""

    .line 2058
    :cond_4
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "overlay_display_devices"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "enable_opengl_traces"

    const-string v23, "debug.egl.trace"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "immediately_destroy_activities"

    const-string v21, "always_finish_activities"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    :goto_a
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2070
    .local v12, limit:Ljava/lang/Integer;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    .line 2075
    :goto_b
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "app_process_limit"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    sget-object v22, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v23, "show_all_anrs"

    const-string v21, "anr_show_background"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, 0x1

    :goto_c
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    const-string v6, ""

    .line 2082
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 2083
    .local v10, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v15

    .line 2084
    .local v15, size:I
    new-array v11, v15, [Ljava/lang/String;

    .line 2085
    .local v11, keys:[Ljava/lang/String;
    invoke-interface {v10, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2086
    const/4 v9, 0x0

    .local v9, i:I
    :goto_d
    if-ge v9, v15, :cond_11

    .line 2087
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    aget-object v22, v11, v9

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2088
    .local v18, value:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v11, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2089
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_5

    .line 2090
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2086
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 1964
    .end local v3           #activity:Landroid/app/Activity;
    .end local v4           #animatorDuration:Ljava/lang/Float;
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #defaultValueStr:Ljava/lang/String;
    .end local v8           #flingerOptions:Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    .end local v9           #i:I
    .end local v10           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #keys:[Ljava/lang/String;
    .end local v12           #limit:Ljava/lang/Integer;
    .end local v13           #overlayValue:Ljava/lang/String;
    .end local v15           #size:I
    .end local v16           #transitionAnimation:Ljava/lang/Float;
    .end local v18           #value:Ljava/lang/String;
    .end local v20           #windowAnimation:Ljava/lang/Float;
    :catchall_0
    move-exception v21

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v21

    .line 1981
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v6       #defaultValueStr:Ljava/lang/String;
    .restart local v8       #flingerOptions:Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1984
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1987
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 1994
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1997
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 2006
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 2009
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 2011
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 2013
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 2039
    .restart local v4       #animatorDuration:Ljava/lang/Float;
    .restart local v16       #transitionAnimation:Ljava/lang/Float;
    .restart local v20       #windowAnimation:Ljava/lang/Float;
    :catch_0
    move-exception v7

    .line 2040
    .local v7, e:Landroid/os/RemoteException;
    const-string v21, "DevelopmentSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "prepareInitialValueForReset:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2064
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v13       #overlayValue:Ljava/lang/String;
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 2071
    .restart local v12       #limit:Ljava/lang/Integer;
    :catch_1
    move-exception v7

    .line 2072
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v21, "DevelopmentSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "prepareInitialValueForReset:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2077
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 2094
    .restart local v9       #i:I
    .restart local v10       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11       #keys:[Ljava/lang/String;
    .restart local v15       #size:I
    :cond_11
    const-string v21, "htc_developer_options_reset_values"

    move-object/from16 v0, v21

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2117
    .end local v3           #activity:Landroid/app/Activity;
    .end local v4           #animatorDuration:Ljava/lang/Float;
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v8           #flingerOptions:Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    .end local v10           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #keys:[Ljava/lang/String;
    .end local v12           #limit:Ljava/lang/Integer;
    .end local v13           #overlayValue:Ljava/lang/String;
    .end local v16           #transitionAnimation:Ljava/lang/Float;
    .end local v20           #windowAnimation:Ljava/lang/Float;
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getUiHandler()Landroid/os/Handler;

    move-result-object v17

    .line 2118
    .local v17, uiHandler:Landroid/os/Handler;
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2120
    sget-boolean v21, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v21, :cond_16

    .line 2121
    const-string v21, "DevelopmentSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "reset value:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 2123
    .restart local v10       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v15

    .line 2124
    new-array v11, v15, [Ljava/lang/String;

    .line 2125
    .restart local v11       #keys:[Ljava/lang/String;
    invoke-interface {v10, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2126
    const/4 v9, 0x0

    :goto_f
    if-ge v9, v15, :cond_15

    .line 2127
    const-string v22, "DevelopmentSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v23, v11, v9

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    aget-object v24, v11, v9

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 2097
    .end local v9           #i:I
    .end local v10           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #keys:[Ljava/lang/String;
    .end local v15           #size:I
    .end local v17           #uiHandler:Landroid/os/Handler;
    :cond_12
    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 2098
    .local v19, values:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v15, v0

    .line 2099
    .restart local v15       #size:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_10
    if-ge v9, v15, :cond_14

    .line 2100
    aget-object v21, v19, v9

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2102
    .local v14, pair:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_13

    .line 2103
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const/16 v22, 0x0

    aget-object v22, v14, v22

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 2105
    :cond_13
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const/16 v22, 0x0

    aget-object v22, v14, v22

    const/16 v23, 0x1

    aget-object v23, v14, v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 2113
    .end local v14           #pair:[Ljava/lang/String;
    :cond_14
    sget-object v21, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v22, "track_frame_time"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 2129
    .end local v19           #values:[Ljava/lang/String;
    .restart local v10       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11       #keys:[Ljava/lang/String;
    .restart local v17       #uiHandler:Landroid/os/Handler;
    :cond_15
    const-string v21, "DevelopmentSettings"

    const-string v22, "<< prepareResetValue()"

    invoke-static/range {v21 .. v22}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    .end local v10           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #keys:[Ljava/lang/String;
    :cond_16
    return-void
.end method

.method private removePreference(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 445
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method private removePreferenceForProduction(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 436
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Lcom/htc/preference/HtcPreference;)V

    .line 438
    const/4 v0, 0x1

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetDangerousAdvanceOptions()V
    .locals 6

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1717
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1721
    .local v1, cr:Landroid/content/ContentResolver;
    sget-boolean v4, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v4, :cond_15

    .line 1723
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "htc_strict_mode"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1724
    .local v3, resetVal:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1725
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeHtcStrictMode(I)V

    .line 1740
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "show_screen_updates"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1741
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1742
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1743
    .local v2, reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "show_screen_updates"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_1

    .line 1744
    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->writeShowUpdatesOption(Z)V

    .line 1749
    .end local v2           #reset:Z
    :cond_1
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "disable_overlays"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1750
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1751
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1752
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "disable_overlays"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_2

    .line 1753
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeDisableOverlaysOption(Z)V

    .line 1758
    .end local v2           #reset:Z
    :cond_2
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "show_cpu_usage"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1759
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1760
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1761
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "show_cpu_usage"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_3

    .line 1762
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeCpuUsageOptions(Z)V

    .line 1767
    .end local v2           #reset:Z
    :cond_3
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "force_hw_ui"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1768
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1769
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1770
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "force_hw_ui"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_4

    .line 1771
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions(Z)V

    .line 1776
    .end local v2           #reset:Z
    :cond_4
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "force_msaa"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1777
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1778
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1779
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "force_msaa"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_5

    .line 1780
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeMsaaOptions(Z)V

    .line 1785
    .end local v2           #reset:Z
    :cond_5
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "track_frame_time"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1786
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1787
    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    .line 1791
    :cond_6
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "show_non_rect_clip"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1792
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 1793
    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    .line 1797
    :cond_7
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "show_hw_screen_udpates"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1798
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 1799
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1800
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "show_hw_screen_udpates"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_8

    .line 1801
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions(Z)V

    .line 1806
    .end local v2           #reset:Z
    :cond_8
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "show_hw_layers_udpates"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1807
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 1808
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1809
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "show_hw_layers_udpates"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_9

    .line 1810
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions(Z)V

    .line 1815
    .end local v2           #reset:Z
    :cond_9
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "debug_hw_overdraw"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1816
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 1817
    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/String;)V

    .line 1821
    :cond_a
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "debug_layout"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1822
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 1823
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1824
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "debug_layout"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_b

    .line 1825
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeDebugLayoutOptions(Z)V

    .line 1830
    .end local v2           #reset:Z
    :cond_b
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "force_rtl_layout_all_locales"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1831
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 1832
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1833
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "force_rtl_layout_all_locales"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_c

    .line 1834
    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->writeForceRtlOptions(Z)V

    .line 1839
    .end local v2           #reset:Z
    :cond_c
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "window_animation_scale"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1840
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_d

    .line 1841
    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 1845
    :cond_d
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "transition_animation_scale"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1846
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 1847
    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 1851
    :cond_e
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "animator_duration_scale"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1852
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 1853
    const/4 v4, 0x2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 1858
    :cond_f
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "immediately_destroy_activities"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1859
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 1860
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1861
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "immediately_destroy_activities"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_10

    .line 1862
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions(Z)V

    .line 1868
    .end local v2           #reset:Z
    :cond_10
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "overlay_display_devices"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1869
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_11

    .line 1870
    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 1874
    :cond_11
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "enable_opengl_traces"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1875
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 1876
    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    .line 1880
    :cond_12
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "app_process_limit"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1881
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_13

    .line 1882
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 1886
    :cond_13
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "show_all_anrs"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #resetVal:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1887
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_14

    .line 1888
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1889
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "show_all_anrs"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_14

    .line 1890
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions(Z)V

    .line 1895
    .end local v2           #reset:Z
    :cond_14
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetHighPerformanceMode()V

    .line 1896
    return-void

    .line 1730
    .end local v3           #resetVal:Ljava/lang/String;
    :cond_15
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v5, "strict_mode"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1731
    .restart local v3       #resetVal:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1732
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1733
    .restart local v2       #reset:Z
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    const-string v5, "strict_mode"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_0

    .line 1734
    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions(Z)V

    goto/16 :goto_0
.end method

.method private resetDangerousOptions()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 596
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 597
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 598
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 599
    .local v0, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    sget-object v4, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 600
    .local v3, resetValStr:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 597
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 604
    .local v2, resetVal:Z
    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eq v4, v2, :cond_0

    .line 605
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 606
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 609
    .end local v0           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v2           #resetVal:Z
    .end local v3           #resetValStr:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 611
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousAdvanceOptions()V

    .line 613
    iput-boolean v6, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 614
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 615
    iput-boolean v6, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 616
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 617
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 735
    sget-object v1, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v2, "wait_for_debugger"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 736
    .local v0, resetVal:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 740
    :cond_0
    sget-object v1, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v2, "debug_app"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resetVal:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 741
    .restart local v0       #resetVal:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    const/4 v0, 0x0

    .line 746
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    sget-object v1, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v3, "wait_for_debugger"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private resetHighPerformanceMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1899
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    if-nez v0, :cond_0

    .line 1911
    :goto_0
    return-void

    .line 1903
    :cond_0
    sget-boolean v0, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1904
    const-string v0, "DevelopmentSettings"

    const-string v1, "resetHighPerformanceMode, set to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_performance_mode_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1910
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 449
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 450
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 451
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 453
    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 454
    return-void
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAdvanceEntries(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdvanceValues:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    sget-object v1, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1709
    .local v0, resetVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1710
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1713
    :cond_0
    return-void

    .line 1710
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAllOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 508
    .local v3, context:Landroid/content/Context;
    if-nez v3, :cond_0

    .line 593
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 514
    .local v4, cr:Landroid/content/ContentResolver;
    iput-boolean v6, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 518
    const-string v7, "adb_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    move v1, v5

    .line 520
    .local v1, adbEnabled:Z
    :goto_1
    const-string v7, "adb_blocked"

    invoke-static {v4, v7, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 524
    .local v0, adbBlocked:Z
    const/4 v2, 0x0

    .line 525
    .local v2, bMdmAdbLocked:Z
    invoke-static {}, Lcom/android/settings/framework/util/HtcMdmUtil;->isMDMApiSupported()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 526
    invoke-static {v3}, Lcom/android/settings/framework/util/HtcMdmUtil;->isUsbDebuggingLocked(Landroid/content/Context;)Z

    move-result v2

    .line 531
    :cond_1
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    move v7, v5

    :goto_2
    invoke-virtual {p0, v8, v7}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 534
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v7, :cond_7

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    move v7, v5

    :goto_3
    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 535
    sget-boolean v7, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 536
    if-eqz v0, :cond_2

    .line 537
    const-string v7, "DevelopmentSettings"

    const-string v8, "ADB is diabled by 3LM"

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2
    if-eqz v2, :cond_3

    .line 541
    const-string v7, "DevelopmentSettings"

    const-string v8, "ADB is diabled by MDM policy"

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_3
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v7, "adb_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v5

    :goto_4
    invoke-virtual {p0, v8, v7}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 548
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_4

    .line 549
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.android.terminal"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_9

    move v7, v5

    :goto_5
    invoke-virtual {p0, v8, v7}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 553
    :cond_4
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v7, "bugreport_in_power_menu"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    move v7, v5

    :goto_6
    invoke-virtual {p0, v8, v7}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 555
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v7, "stay_on_while_plugged_in"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_b

    move v7, v5

    :goto_7
    invoke-virtual {p0, v8, v7}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 557
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v7, "bluetooth_hci_log"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_c

    move v7, v5

    :goto_8
    invoke-virtual {p0, v8, v7}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 559
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v8, "mock_location"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_d

    :goto_9
    invoke-virtual {p0, v7, v5}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 561
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateRuntimeValue()V

    .line 562
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 563
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 564
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 565
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateClearAdbKeysOptions()V

    .line 566
    sget-boolean v5, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v5, :cond_e

    .line 567
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHtcStrictMode()V

    .line 571
    :goto_a
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 572
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 573
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()Lcom/android/settings/DevelopmentSettings$FlingerOptions;

    .line 574
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 575
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 576
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMsaaOptions()V

    .line 577
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 578
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 579
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 580
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 581
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 582
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 583
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 584
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 585
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 586
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 587
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 588
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 589
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 590
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 591
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 592
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .end local v0           #adbBlocked:Z
    .end local v1           #adbEnabled:Z
    .end local v2           #bMdmAdbLocked:Z
    :cond_5
    move v1, v6

    .line 518
    goto/16 :goto_1

    .restart local v0       #adbBlocked:Z
    .restart local v1       #adbEnabled:Z
    .restart local v2       #bMdmAdbLocked:Z
    :cond_6
    move v7, v6

    .line 531
    goto/16 :goto_2

    :cond_7
    move v7, v6

    .line 534
    goto/16 :goto_3

    :cond_8
    move v7, v6

    .line 546
    goto/16 :goto_4

    :cond_9
    move v7, v6

    .line 549
    goto/16 :goto_5

    :cond_a
    move v7, v6

    .line 553
    goto/16 :goto_6

    :cond_b
    move v7, v6

    .line 555
    goto/16 :goto_7

    :cond_c
    move v7, v6

    .line 557
    goto :goto_8

    :cond_d
    move v5, v6

    .line 559
    goto :goto_9

    .line 569
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    goto :goto_a
.end method

.method private updateAnimationScaleOptions()V
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(I)V

    .line 1236
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(I)V

    .line 1237
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(I)V

    .line 1238
    return-void
.end method

.method private updateAnimationScaleValue(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 1212
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    .line 1213
    .local v2, scale:F
    const/4 v0, 0x0

    .line 1214
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1226
    :goto_0
    sget-object v3, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1227
    .local v1, resetVal:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 1228
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1232
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #resetVal:Ljava/lang/String;
    .end local v2           #scale:F
    :cond_0
    :goto_1
    return-void

    .line 1216
    .restart local v0       #key:Ljava/lang/String;
    .restart local v2       #scale:F
    :pswitch_0
    const-string v0, "window_animation_scale"

    .line 1217
    goto :goto_0

    .line 1219
    :pswitch_1
    const-string v0, "transition_animation_scale"

    .line 1220
    goto :goto_0

    .line 1222
    :pswitch_2
    const-string v0, "animator_duration_scale"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1230
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #scale:F
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAppProcessLimitOptions()V
    .locals 4

    .prologue
    .line 1320
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v0

    .line 1321
    .local v0, limit:I
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v3, "app_process_limit"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1322
    .local v1, resetVal:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1323
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    .end local v0           #limit:I
    .end local v1           #resetVal:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateBugreportOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 846
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 848
    .local v0, adbEnabled:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 849
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Lcom/htc/preference/HtcPreference;

    if-eqz v4, :cond_0

    .line 850
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 852
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 863
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 864
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_1

    .line 865
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 867
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 874
    :cond_2
    return-void

    .end local v0           #adbEnabled:Z
    :cond_3
    move v0, v3

    .line 846
    goto :goto_0

    .line 854
    .restart local v0       #adbEnabled:Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_5

    .line 855
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 857
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 858
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 859
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private updateClearAdbKeysOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 756
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1176
    const-string v1, "show_cpu_usage"

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1179
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 5

    .prologue
    .line 1113
    const-string v2, "debug.hwui.overdraw"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1115
    const-string v1, ""

    .line 1118
    :cond_0
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v3, "debug_hw_overdraw"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1121
    .local v0, resetVal:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 1122
    :cond_2
    sget-boolean v2, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1123
    const-string v2, "DevelopmentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDebugHwOverdrawOptions, ignore empty, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resetVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_3
    :goto_0
    return-void

    .line 1128
    :cond_4
    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1129
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    goto :goto_0
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1139
    const-string v0, "debug_layout"

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1141
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "debug_app"

    invoke-static {v5, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 767
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "wait_for_debugger"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {p0, v8, v5}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 769
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 772
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v9, 0x200

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 774
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 775
    .local v2, lab:Ljava/lang/CharSequence;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 779
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #lab:Ljava/lang/CharSequence;
    .local v3, label:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c11e6

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v3, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 786
    .end local v3           #label:Ljava/lang/String;
    :goto_2
    sget-object v5, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v7, "debug_app"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 787
    .local v4, resetVal:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 788
    const/4 v4, 0x0

    .line 791
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 792
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 794
    :cond_2
    sget-object v5, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v7, "wait_for_debugger"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #resetVal:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 795
    .restart local v4       #resetVal:Ljava/lang/String;
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eq v5, v7, :cond_3

    .line 797
    iput-boolean v6, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 799
    :cond_3
    return-void

    .end local v4           #resetVal:Ljava/lang/String;
    :cond_4
    move v5, v7

    .line 767
    goto/16 :goto_0

    .line 775
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #lab:Ljava/lang/CharSequence;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 776
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #lab:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 777
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3       #label:Ljava/lang/String;
    goto :goto_1

    .line 782
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #label:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c11e5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 942
    new-instance v5, Lcom/android/settings/DevelopmentSettings$FlingerOptions;

    invoke-direct {v5, v10}, Lcom/android/settings/DevelopmentSettings$FlingerOptions;-><init>(Lcom/android/settings/DevelopmentSettings$1;)V

    .line 945
    .local v5, flingerOptions:Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    :try_start_0
    const-string v13, "SurfaceFlinger"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 946
    .local v4, flinger:Landroid/os/IBinder;
    if-eqz v4, :cond_0

    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 948
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 949
    .local v6, reply:Landroid/os/Parcel;
    const-string v13, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 950
    const/16 v13, 0x3f2

    const/4 v14, 0x0

    invoke-interface {v4, v13, v0, v6, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 952
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 954
    .local v8, showCpu:I
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 955
    .local v2, enableGL:I
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 956
    .local v9, showUpdates:I
    const-string v14, "show_screen_updates"

    if-eqz v9, :cond_1

    move v13, v11

    :goto_0
    invoke-direct {p0, v14, v13}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 958
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 959
    .local v7, showBackground:I
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 960
    .local v1, disableOverlays:I
    const-string v13, "disable_overlays"

    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, v13, v11}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 961
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    iput v8, v5, Lcom/android/settings/DevelopmentSettings$FlingerOptions;->mShowCpu:I

    .line 965
    iput v2, v5, Lcom/android/settings/DevelopmentSettings$FlingerOptions;->mEnableGL:I

    .line 966
    iput v9, v5, Lcom/android/settings/DevelopmentSettings$FlingerOptions;->mShowUpdates:I

    .line 967
    iput v7, v5, Lcom/android/settings/DevelopmentSettings$FlingerOptions;->mShowBackground:I

    .line 968
    iput v1, v5, Lcom/android/settings/DevelopmentSettings$FlingerOptions;->mDisableOverlays:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #enableGL:I
    .end local v4           #flinger:Landroid/os/IBinder;
    .end local v5           #flingerOptions:Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    .end local v6           #reply:Landroid/os/Parcel;
    .end local v7           #showBackground:I
    .end local v8           #showCpu:I
    .end local v9           #showUpdates:I
    :cond_0
    :goto_2
    return-object v5

    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v2       #enableGL:I
    .restart local v4       #flinger:Landroid/os/IBinder;
    .restart local v5       #flingerOptions:Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    .restart local v6       #reply:Landroid/os/Parcel;
    .restart local v8       #showCpu:I
    .restart local v9       #showUpdates:I
    :cond_1
    move v13, v12

    .line 956
    goto :goto_0

    .restart local v1       #disableOverlays:I
    .restart local v7       #showBackground:I
    :cond_2
    move v11, v12

    .line 960
    goto :goto_1

    .line 970
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #enableGL:I
    .end local v4           #flinger:Landroid/os/IBinder;
    .end local v6           #reply:Landroid/os/Parcel;
    .end local v7           #showBackground:I
    .end local v8           #showCpu:I
    .end local v9           #showUpdates:I
    :catch_0
    move-exception v3

    .line 971
    .local v3, ex:Landroid/os/RemoteException;
    const-string v11, "DevelopmentSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateFlingerOptions:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 972
    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1150
    const-string v1, "force_rtl_layout_all_locales"

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1153
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1012
    const-string v0, "force_hw_ui"

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1014
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 667
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 668
    .local v1, hdcpChecking:Lcom/htc/preference/HtcListPreference;
    if-eqz v1, :cond_1

    .line 669
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 671
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, summaries:[Ljava/lang/String;
    const/4 v3, 0x1

    .line 673
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 674
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 675
    move v3, v2

    .line 679
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 680
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 681
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 683
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 673
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateHtcStrictMode()V
    .locals 5

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "strict_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1669
    .local v1, value:I
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v3, "htc_strict_mode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1670
    .local v0, resetVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1671
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1673
    :cond_0
    return-void
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1203
    const-string v1, "immediately_destroy_activities"

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1207
    return-void
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1022
    const-string v0, "force_msaa"

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1024
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 4

    .prologue
    .line 1304
    const-string v2, "debug.egl.trace"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v3, "enable_opengl_traces"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1307
    .local v0, resetVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1308
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1310
    :cond_0
    return-void
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 5

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "overlay_display_devices"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1275
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v3, "overlay_display_devices"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1284
    .local v0, resetVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1285
    :cond_1
    sget-boolean v2, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1286
    const-string v2, "DevelopmentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOverlayDisplayDevicesOptions, ignore empty, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resetVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_2
    :goto_0
    return-void

    .line 1292
    :cond_3
    if-ne v0, v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1293
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    goto :goto_0
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DevelopmentSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DevelopmentSettings$1;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 927
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 929
    return-void
.end method

.method private updateRuntimeValue()V
    .locals 8

    .prologue
    .line 648
    const-string v6, "select_runtime"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    .line 649
    .local v3, selectRuntime:Lcom/htc/preference/HtcListPreference;
    if-eqz v3, :cond_1

    .line 650
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->currentRuntimeValue()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, summaries:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 654
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 655
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 656
    move v2, v1

    .line 660
    :cond_0
    aget-object v6, v5, v2

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 661
    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 664
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 654
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #index:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1345
    const-string v1, "show_all_anrs"

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1349
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1101
    const-string v0, "show_hw_layers_udpates"

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1104
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1089
    const-string v0, "show_hw_screen_udpates"

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 1092
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 5

    .prologue
    .line 1060
    const-string v2, "debug.hwui.show_non_rect_clip"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1062
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1063
    const-string v1, ""

    .line 1066
    :cond_0
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v3, "show_non_rect_clip"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1069
    .local v0, resetVal:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 1070
    :cond_2
    sget-boolean v2, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1071
    const-string v2, "DevelopmentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateShowNonRectClipOptions, ignore empty, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resetVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_3
    :goto_0
    return-void

    .line 1076
    :cond_4
    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1077
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    goto :goto_0
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 937
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 939
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 918
    const-string v1, "strict_mode"

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAdvanceEntries(Ljava/lang/String;Z)V

    .line 919
    return-void

    .line 918
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 5

    .prologue
    .line 1032
    const-string v2, "debug.hwui.profile"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1035
    const-string v1, ""

    .line 1038
    :cond_0
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    const-string v3, "track_frame_time"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1041
    .local v0, resetVal:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 1042
    :cond_2
    sget-boolean v2, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1043
    const-string v2, "DevelopmentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTrackFrameTimeOptions, ignore empty, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resetVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_3
    :goto_0
    return-void

    .line 1048
    :cond_4
    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1049
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 802
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "verifier_verify_adb_installs"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 804
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 811
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 802
    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1164
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V

    .line 1167
    return-void
.end method

.method private writeAnimationScaleOption(ILjava/lang/Object;)V
    .locals 5
    .parameter "which"
    .parameter "newValue"

    .prologue
    .line 1242
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1245
    .local v2, scale:F
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1246
    .local v1, oldScale:F
    const/4 v0, 0x0

    .line 1247
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1258
    const-string v3, "DevelopmentSettings"

    const-string v4, "Illegal animation parameter!!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #oldScale:F
    .end local v2           #scale:F
    :goto_1
    return-void

    .line 1242
    :cond_0
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1249
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #oldScale:F
    .restart local v2       #scale:F
    :pswitch_0
    const-string v0, "htc_window_animation_scale"

    .line 1262
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1266
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    goto :goto_1

    .line 1267
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #oldScale:F
    .end local v2           #scale:F
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1252
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #oldScale:F
    .restart local v2       #scale:F
    :pswitch_1
    const-string v0, "htc_transition_animation_scale"

    .line 1253
    goto :goto_2

    .line 1255
    :pswitch_2
    const-string v0, "htc_animator_duration_scale"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    goto :goto_2

    .line 1247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1331
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1332
    .local v0, limit:I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1333
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    .end local v0           #limit:I
    :goto_1
    return-void

    .line 1331
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1334
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 709
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 713
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 714
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 721
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 724
    return-void

    .line 716
    :cond_1
    sget-boolean v1, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 717
    const-string v1, "DevelopmentSettings"

    const-string v2, "writeBtHciSnoopLogOptions, getDefaultAdapter() return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private writeCpuUsageOptions(Z)V
    .locals 5
    .parameter "isChecked"

    .prologue
    .line 1182
    move v1, p1

    .line 1183
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1185
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1187
    .local v0, service:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1188
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1192
    :goto_1
    return-void

    .line 1183
    .end local v0           #service:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1190
    .restart local v0       #service:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/String;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1134
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    return-void

    .line 1134
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 1144
    const-string v1, "debug.layout"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1147
    return-void

    .line 1144
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 728
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption(Z)V
    .locals 6
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 996
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 997
    .local v2, flinger:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 999
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1000
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1001
    .local v1, disableOverlays:I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #flinger:Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeForceRtlOptions(Z)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 1156
    move v0, p1

    .line 1157
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1159
    const-string v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1161
    return-void

    .line 1157
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1159
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 1017
    const-string v1, "persist.sys.ui.hw"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1019
    return-void

    .line 1017
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeHtcStrictMode(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 1677
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    if-nez p1, :cond_1

    const-string v2, ""

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "strict_mode"

    invoke-static {v2, v3, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1685
    const-string v2, "persist.sys.strictmode.profile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    sget-boolean v2, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1688
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1689
    const-string v2, "DevelopmentSettings"

    const-string v3, "currentStrictModeActiveIndex: 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_0
    :goto_2
    return-void

    .line 1677
    :cond_1
    :try_start_1
    const-string v2, "1"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DevelopmentSettings"

    const-string v3, " ERROR: Write Strict Mode Visual Profile Fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const-string v2, "DevelopmentSettings"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1691
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "persist.sys.strictmode.visual"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1692
    .local v1, enabled:Z
    const-string v3, "DevelopmentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentStrictModeActiveIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    goto :goto_3
.end method

.method private writeImmediatelyDestroyActivitiesOptions(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 1196
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeMsaaOptions(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 1027
    const-string v1, "debug.egl.force_msaa"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1029
    return-void

    .line 1027
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1313
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1315
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1316
    return-void

    .line 1313
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1300
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1301
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    return-void

    .line 922
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1342
    return-void

    .line 1339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 1107
    const-string v1, "debug.hwui.show_layers_updates"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1110
    return-void

    .line 1107
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 1095
    const-string v1, "debug.hwui.show_dirty_regions"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1098
    return-void

    .line 1095
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1082
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1085
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1086
    return-void

    .line 1082
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 934
    return-void

    .line 932
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption(Z)V
    .locals 6
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 979
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 980
    .local v1, flinger:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 982
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 983
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 984
    .local v2, showUpdates:I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()Lcom/android/settings/DevelopmentSettings$FlingerOptions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #flinger:Landroid/os/IBinder;
    .end local v2           #showUpdates:I
    :cond_1
    :goto_0
    return-void

    .line 990
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions(Z)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 891
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 902
    sget-boolean v1, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 903
    const-string v1, "DevelopmentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @@@@@ current Strict Mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    :goto_1
    return-void

    .line 891
    :cond_1
    const-string v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DevelopmentSettings"

    const-string v2, " @@@@@ ERROR: Write Strict Mode Visual Options Fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v1, "DevelopmentSettings"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1054
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1057
    return-void

    .line 1054
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 816
    return-void

    .line 814
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1173
    return-void

    .line 1170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method filterRuntimeOptions(Lcom/htc/preference/HtcPreference;)V
    .locals 12
    .parameter "selectRuntime"

    .prologue
    .line 620
    move-object v2, p1

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    .line 621
    .local v2, pref:Lcom/htc/preference/HtcListPreference;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v6, validValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v5, validSummaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080045

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 624
    .local v8, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080046

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, summaries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v9, v8

    if-ge v1, v9, :cond_1

    .line 626
    aget-object v7, v8, v1

    .line 627
    .local v7, value:Ljava/lang/String;
    aget-object v4, v3, v1

    .line 628
    .local v4, summary:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/lib/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 629
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    .end local v4           #summary:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 634
    .local v0, count:I
    const/4 v9, 0x1

    if-gt v0, v9, :cond_2

    .line 636
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Lcom/htc/preference/HtcPreference;)V

    .line 641
    :goto_1
    return-void

    .line 638
    :cond_2
    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 639
    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 399
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 402
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 407
    .local v3, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 409
    .end local v3           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 412
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 413
    invoke-direct {p0, v5}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v2

    .line 418
    .local v2, nonUiHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 423
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "development_settings_enabled"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    .end local v1           #cr:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 431
    :cond_1
    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1388
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1389
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1390
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1391
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1392
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 1353
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-ne p1, v0, :cond_0

    .line 1354
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_0

    .line 1355
    if-eqz p2, :cond_1

    .line 1357
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1359
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1360
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1377
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1379
    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1380
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1542
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v5, :cond_3

    .line 1543
    if-ne p2, v8, :cond_2

    .line 1544
    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1551
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1552
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v5, "adb_blocked"

    invoke-static {v1, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .line 1555
    .local v3, isAdbBlocked:Z
    if-nez v3, :cond_1

    .line 1556
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1558
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1564
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 1565
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1566
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 1598
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #isAdbBlocked:Z
    :cond_0
    :goto_0
    return-void

    .line 1569
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v3       #isAdbBlocked:Z
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1574
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #isAdbBlocked:Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1576
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v5, :cond_4

    .line 1577
    if-ne p2, v8, :cond_0

    .line 1579
    :try_start_0
    const-string v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1580
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 1581
    .local v4, service:Landroid/hardware/usb/IUsbManager;
    invoke-interface {v4}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1582
    .end local v0           #b:Landroid/os/IBinder;
    .end local v4           #service:Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v2

    .line 1583
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "DevelopmentSettings"

    const-string v6, "Unable to clear adb keys"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1586
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v5, :cond_0

    .line 1587
    if-ne p2, v8, :cond_5

    .line 1588
    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1589
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "development_settings_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1591
    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1592
    iget-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v5}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 1595
    :cond_5
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 254
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 258
    const v3, 0x7f060011

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 260
    const-string v3, "debug_debugging_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 263
    .local v0, debugDebuggingCategory:Lcom/htc/preference/HtcPreferenceGroup;
    const-string v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 264
    const-string v3, "clear_adb_keys"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Lcom/htc/preference/HtcPreference;

    .line 265
    const-string v3, "ro.adb.secure"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 270
    :cond_0
    const-string v3, "enable_terminal"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/android/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 273
    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 276
    :cond_1
    const-string v3, "bugreport"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Lcom/htc/preference/HtcPreference;

    .line 277
    const-string v3, "bugreport_in_power"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 278
    const-string v3, "keep_screen_on"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 281
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x40a0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportStayAwake(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    const-string v3, "keep_screen_on"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 287
    :cond_2
    const-string v3, "bt_hci_snoop_log"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 288
    const-string v3, "allow_mock_location"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 289
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;

    .line 290
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v3, "proc_stats"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mProcessStats:Lcom/htc/preference/HtcPreferenceScreen;

    .line 294
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mProcessStats:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 298
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Lcom/htc/preference/HtcPreference;)V

    .line 299
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Lcom/htc/preference/HtcPreference;)V

    .line 300
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Lcom/htc/preference/HtcPreference;)V

    .line 301
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Lcom/htc/preference/HtcPreference;)V

    .line 304
    :cond_3
    const-string v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Lcom/htc/preference/HtcPreference;

    .line 305
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    const-string v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 307
    const-string v3, "verify_apps_over_usb"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 308
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v3

    if-nez v3, :cond_4

    .line 309
    if-eqz v0, :cond_8

    .line 310
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 315
    :cond_4
    :goto_0
    const-string v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 316
    const-string v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 317
    const-string v3, "wifi_display_certification"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 319
    const-string v3, "select_runtime"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 320
    .local v2, selectRuntime:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_5

    .line 322
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHideSelectRuntime()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 323
    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->removePreference(Lcom/htc/preference/HtcPreference;)V

    .line 331
    :cond_5
    :goto_1
    const-string v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 332
    .local v1, hdcpChecking:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_6

    .line 333
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->removePreferenceForProduction(Lcom/htc/preference/HtcPreference;)Z

    .line 339
    :cond_6
    const-string v3, "htc_performance_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    .line 340
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    if-eqz v3, :cond_7

    .line 341
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDeveloperFeatureFlags;->supportPerformanceMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 342
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addCallback(Ljava/lang/Object;)V

    .line 351
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->doPlugin()V

    .line 352
    return-void

    .line 312
    .end local v1           #hdcpChecking:Lcom/htc/preference/HtcPreference;
    .end local v2           #selectRuntime:Lcom/htc/preference/HtcPreference;
    :cond_8
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 325
    .restart local v2       #selectRuntime:Lcom/htc/preference/HtcPreference;
    :cond_9
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->filterRuntimeOptions(Lcom/htc/preference/HtcPreference;)V

    goto :goto_1

    .line 345
    .restart local v1       #hdcpChecking:Lcom/htc/preference/HtcPreference;
    :cond_a
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->removePreference(Lcom/htc/preference/HtcPreference;)V

    .line 346
    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mPerformanceMode:Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1617
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1618
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 1619
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1602
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1603
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1606
    :cond_0
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1613
    :cond_1
    :goto_0
    return-void

    .line 1607
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1608
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 1609
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 1611
    :cond_3
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2165
    :goto_0
    return-void

    .line 2162
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->prepareResetValue()V

    goto :goto_0

    .line 2160
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 2148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2150
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 2151
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v0, :cond_0

    .line 2152
    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 2148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1489
    const-string v6, "select_runtime"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1490
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    .line 1491
    .local v3, oldRuntimeValue:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1492
    .local v2, newRuntimeValue:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1494
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1495
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c1035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1496
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c1037

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v5

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1498
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DevelopmentSettings$2;

    invoke-direct {v6, p0, v2, v1}, Lcom/android/settings/DevelopmentSettings$2;-><init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1508
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/DevelopmentSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/DevelopmentSettings$3;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1514
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1523
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #newRuntimeValue:Ljava/lang/String;
    .end local v3           #oldRuntimeValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1517
    :cond_1
    const-string v6, "hdcp_checking"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1518
    const-string v5, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 1520
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    goto :goto_0

    :cond_2
    move v4, v5

    .line 1523
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1401
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return v3

    .line 1405
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_5

    .line 1407
    const/4 v0, 0x1

    .line 1408
    .local v0, bHandleClick:Z
    invoke-static {}, Lcom/android/settings/framework/util/HtcMdmUtil;->isMDMApiSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/HtcMdmUtil;->isUsbDebuggingLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1409
    const/4 v0, 0x0

    .line 1410
    sget-boolean v2, Lcom/android/settings/DevelopmentSettings;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1411
    const-string v2, "DevelopmentSettings"

    const-string v4, "onPreferenceTreeClick, mdm policy applied, ignore mEnableAdb click"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_2
    if-eqz v0, :cond_0

    .line 1416
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1417
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1418
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1419
    :cond_3
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c103d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c103c

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    invoke-virtual {v2, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    invoke-virtual {v2, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1426
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1428
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adb_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1430
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 1431
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1433
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    .line 1435
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto/16 :goto_0

    .line 1438
    .end local v0           #bHandleClick:Z
    :cond_5
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Lcom/htc/preference/HtcPreference;

    if-ne p2, v4, :cond_7

    .line 1439
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1440
    :cond_6
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c102e

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c103e

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    invoke-virtual {v2, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1446
    :cond_7
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_9

    .line 1447
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1448
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v4, "com.android.terminal"

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto :goto_1

    .line 1451
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_9
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_b

    .line 1452
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bugreport_in_power_menu"

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_2

    .line 1455
    :cond_b
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_d

    .line 1456
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x7

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto :goto_3

    .line 1462
    :cond_d
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_e

    .line 1463
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1464
    :cond_e
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_10

    .line 1465
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mock_location"

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_f

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    move v2, v3

    goto :goto_4

    .line 1468
    :cond_10
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v2, :cond_11

    .line 1469
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1470
    :cond_11
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_12

    .line 1471
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1472
    :cond_12
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_13

    .line 1473
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1474
    :cond_13
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_14

    .line 1475
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1476
    :cond_14
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_15

    .line 1477
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1478
    :cond_15
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_16

    .line 1479
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1481
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 458
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 460
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 465
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 470
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 473
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 475
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v1, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "development_settings_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 483
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 486
    return-void

    .line 467
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1623
    new-instance v0, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1625
    :cond_0
    return-void
.end method

.method updateCheckBox(Lcom/htc/preference/HtcCheckBoxPreference;Z)V
    .locals 3
    .parameter "checkBox"
    .parameter "value"

    .prologue
    .line 489
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 492
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    sget-object v1, Lcom/android/settings/DevelopmentSettings;->mResetValues:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/preference/HtcCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    .local v0, resetVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 497
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
