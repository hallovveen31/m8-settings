.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;
.source "SecuritySettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_IMPROVE_REQUEST:I = 0x7c

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_LIVELINESS_OFF:I = 0x7d

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_BIOMETRIC_WEAK_LIVELINESS:Ljava/lang/String; = "biometric_weak_liveliness"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_ENABLE_WIDGETS:Ljava/lang/String; = "keyguard_enable_widgets"

.field private static final KEY_INSTALL_CREDENTIALS:Ljava/lang/String; = "install_credentials"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "reset_credentials"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TOGGLE_VERIFY_APPLICATIONS:Ljava/lang/String; = "toggle_verify_applications"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final LAUNCH_CHOOSE_LOCK_DIRECT:Ljava/lang/String; = "launch_lock_direct"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final SLOT_1_CHECKED_KEY:Ljava/lang/String; = "slot1_is_checked"

.field private static final SLOT_2_CHECKED_KEY:Ljava/lang/String; = "slot2_is_checked"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBiometricWeakLiveliness:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHelpMenuItem:Landroid/view/MenuItem;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAccess:Lcom/htc/preference/HtcPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mResetCredentials:Lcom/htc/preference/HtcPreference;

.field private mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTactileFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mToggleVerifyApps:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

.field private simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

.field private subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;-><init>()V

    .line 170
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 64

    .prologue
    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v40

    .line 334
    .local v40, root:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v40, :cond_0

    .line 335
    invoke-virtual/range {v40 .. v40}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 337
    :cond_0
    const v58, 0x7f060035

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v40

    .line 340
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v21, intent:Landroid/content/Intent;
    const/16 v38, 0x0

    .line 343
    .local v38, resid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v58

    if-nez v58, :cond_e

    .line 345
    const-string v58, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/UserManager;

    .line 346
    .local v26, mUm:Landroid/os/UserManager;
    const/16 v58, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v57

    .line 347
    .local v57, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_c

    const/16 v45, 0x1

    .line 349
    .local v45, singleUser:Z
    :goto_0
    if-eqz v45, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v58

    if-eqz v58, :cond_d

    .line 350
    const v38, 0x7f06003a

    .line 376
    .end local v26           #mUm:Landroid/os/UserManager;
    .end local v45           #singleUser:Z
    .end local v57           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v58

    if-eqz v58, :cond_1

    .line 404
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v58

    if-nez v58, :cond_11

    const/16 v58, 0x1

    :goto_2
    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    .line 406
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportEncryptTablet()Z

    move-result v58

    if-eqz v58, :cond_3

    .line 408
    const-string v58, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/admin/DevicePolicyManager;

    .line 411
    .local v18, dpm:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v58, v0

    if-nez v58, :cond_2

    .line 413
    const-string v58, "owner_info_settings"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v34

    .line 414
    .local v34, ownerInfoPref:Lcom/htc/preference/HtcPreference;
    if-eqz v34, :cond_2

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v58

    if-eqz v58, :cond_12

    .line 416
    const v58, 0x7f0c0c5d

    move-object/from16 v0, v34

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 423
    .end local v34           #ownerInfoPref:Lcom/htc/preference/HtcPreference;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v58, v0

    if-eqz v58, :cond_3

    .line 424
    invoke-virtual/range {v18 .. v18}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v58

    packed-switch v58, :pswitch_data_0

    .line 440
    .end local v18           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    :pswitch_0
    const-string v58, "biometric_weak_liveliness"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    check-cast v58, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 444
    const-string v58, "visiblepattern"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    check-cast v58, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 453
    const v58, 0x7f060036

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v58

    const/high16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_4

    .line 456
    const-string v58, "security_category"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v41

    check-cast v41, Lcom/htc/preference/HtcPreferenceGroup;

    .line 458
    .local v41, securityCategory:Lcom/htc/preference/HtcPreferenceGroup;
    if-eqz v41, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    if-eqz v58, :cond_4

    .line 459
    const-string v58, "visiblepattern"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 464
    .end local v41           #securityCategory:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportKidMode(Landroid/content/Context;)Z

    move-result v58

    if-eqz v58, :cond_5

    .line 465
    const-string v58, "security_category"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    .line 467
    .local v6, category:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v6, :cond_5

    .line 470
    new-instance v22, Lcom/android/settings/framework/preference/security/HtcKidModePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v58

    move-object/from16 v0, v22

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/security/HtcKidModePreference;-><init>(Landroid/content/Context;)V

    .line 471
    .local v22, kidMode:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 472
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Ljava/lang/Object;)V

    .line 477
    .end local v6           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v22           #kidMode:Lcom/htc/preference/HtcPreference;
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportBypassLockScreenOnWake()Z

    move-result v58

    if-eqz v58, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v58

    if-eqz v58, :cond_6

    .line 478
    const-string v58, "security_category"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    .line 481
    .restart local v6       #category:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v6, :cond_6

    .line 483
    new-instance v5, Lcom/android/settings/framework/preference/security/HtcBypassLockScreenOnWakePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-direct {v5, v0}, Lcom/android/settings/framework/preference/security/HtcBypassLockScreenOnWakePreference;-><init>(Landroid/content/Context;)V

    .line 484
    .local v5, bypassPref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 485
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/SecuritySettings;->addCallback(Ljava/lang/Object;)V

    .line 491
    .end local v5           #bypassPref:Lcom/htc/preference/HtcPreference;
    .end local v6           #category:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_6
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v58

    if-nez v58, :cond_7

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v58

    if-eqz v58, :cond_b

    .line 492
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v37

    .line 493
    .local v37, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 494
    .local v9, context:Landroid/content/Context;
    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v31

    .line 496
    .local v31, mainSimLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v52

    .line 501
    .local v52, subSimLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v58, "uim_lock_dual_setting"

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 502
    const-string v58, "sim_lock_dual_setting"

    move-object/from16 v0, v52

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 505
    const v28, 0x7f0c08c9

    .line 506
    .local v28, mainPreCategory:I
    const v29, 0x7f0c08ca

    .line 507
    .local v29, mainPreSummary:I
    const v30, 0x7f0c08cb

    .line 508
    .local v30, mainPreTitle:I
    const/16 v27, 0x2

    .line 509
    .local v27, mainPhoneType:I
    const v49, 0x7f0c0e2b

    .line 510
    .local v49, subPreCategory:I
    const v50, 0x7f0c0e2c

    .line 511
    .local v50, subPreSummary:I
    const v51, 0x7f0c0e2d

    .line 512
    .local v51, subPreTitle:I
    const/16 v48, 0x1

    .line 513
    .local v48, subPhoneType:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v58

    if-eqz v58, :cond_8

    .line 514
    const v28, 0x7f0c0a1b

    .line 515
    const v29, 0x7f0c0a1c

    .line 516
    const v30, 0x7f0c0a1d

    .line 517
    const/16 v27, 0x1

    .line 518
    const v49, 0x7f0c0a1e

    .line 519
    const v50, 0x7f0c0a1f

    .line 520
    const v51, 0x7f0c0a20

    .line 521
    const/16 v48, 0x5

    .line 523
    :cond_8
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 525
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 527
    move-object/from16 v0, v52

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 528
    move-object/from16 v0, v52

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    const-string v59, "slot1_is_checked"

    const/16 v60, 0x1

    invoke-static/range {v58 .. v60}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v32

    .line 531
    .local v32, mainSlotEnable:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    const-string v59, "slot2_is_checked"

    const/16 v60, 0x1

    invoke-static/range {v58 .. v60}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v53

    .line 532
    .local v53, subSlotEnable:Z
    sget-object v58, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "mainSlotEnable "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " , subSlotEnable: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v21, Landroid/content/Intent;

    .end local v21           #intent:Landroid/content/Intent;
    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 536
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v58, "com.android.settings"

    const-string v59, "com.android.settings.IccLockSettingsDualMode"

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v58, "phoneType"

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 540
    if-nez v32, :cond_9

    .line 541
    const/16 v58, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 543
    :cond_9
    new-instance v58, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v58

    invoke-direct {v0, v9}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 548
    new-instance v21, Landroid/content/Intent;

    .end local v21           #intent:Landroid/content/Intent;
    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 549
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v58, "com.android.settings"

    const-string v59, "com.android.settings.IccLockSettingsDualMode"

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v58, "phoneType"

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    move-object/from16 v0, v52

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 553
    if-nez v53, :cond_a

    if-eqz v52, :cond_a

    .line 554
    const/16 v58, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 556
    :cond_a
    new-instance v58, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v58

    invoke-direct {v0, v9}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 561
    const-string v58, "sim_lock"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v44

    check-cast v44, Lcom/htc/preference/HtcPreferenceCategory;

    .line 562
    .local v44, sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v44, :cond_b

    .line 563
    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 568
    .end local v9           #context:Landroid/content/Context;
    .end local v27           #mainPhoneType:I
    .end local v28           #mainPreCategory:I
    .end local v29           #mainPreSummary:I
    .end local v30           #mainPreTitle:I
    .end local v31           #mainSimLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v32           #mainSlotEnable:Z
    .end local v37           #preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    .end local v44           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v48           #subPhoneType:I
    .end local v49           #subPreCategory:I
    .end local v50           #subPreSummary:I
    .end local v51           #subPreTitle:I
    .end local v52           #subSimLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v53           #subSlotEnable:Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v58, v0

    if-nez v58, :cond_13

    .line 956
    :goto_4
    return-object v40

    .line 347
    .restart local v26       #mUm:Landroid/os/UserManager;
    .restart local v57       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const/16 v45, 0x0

    goto/16 :goto_0

    .line 352
    .restart local v45       #singleUser:Z
    :cond_d
    const v38, 0x7f060037

    goto/16 :goto_1

    .line 354
    .end local v26           #mUm:Landroid/os/UserManager;
    .end local v45           #singleUser:Z
    .end local v57           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v58

    if-eqz v58, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v58

    if-eqz v58, :cond_f

    .line 356
    const v38, 0x7f060036

    goto/16 :goto_1

    .line 357
    :cond_f
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintSetting()Z

    move-result v58

    if-eqz v58, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v58

    if-eqz v58, :cond_10

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_10

    .line 360
    const v38, 0x7f060039

    goto/16 :goto_1

    .line 362
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v58

    sparse-switch v58, :sswitch_data_0

    goto/16 :goto_1

    .line 364
    :sswitch_0
    const v38, 0x7f06003d

    .line 365
    goto/16 :goto_1

    .line 367
    :sswitch_1
    const v38, 0x7f06003f

    .line 368
    goto/16 :goto_1

    .line 372
    :sswitch_2
    const v38, 0x7f06003c

    goto/16 :goto_1

    .line 404
    :cond_11
    const/16 v58, 0x0

    goto/16 :goto_2

    .line 418
    .restart local v18       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v34       #ownerInfoPref:Lcom/htc/preference/HtcPreference;
    :cond_12
    const v58, 0x7f0c0c5b

    move-object/from16 v0, v34

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto/16 :goto_3

    .line 577
    .end local v18           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v34           #ownerInfoPref:Lcom/htc/preference/HtcPreference;
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->pluginEncryptionCategory(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 582
    new-instance v23, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v23

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 583
    .local v23, lockCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const v58, 0x7f0c01b2

    move-object/from16 v0, v23

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 584
    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 586
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportLockScreenNotification()Z

    move-result v58

    if-eqz v58, :cond_18

    .line 587
    new-instance v24, Lcom/android/settings/framework/preference/security/HtcLockScreenNotificationPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/security/HtcLockScreenNotificationPreference;-><init>(Landroid/content/Context;)V

    .line 588
    .local v24, lockPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual/range {v23 .. v24}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 589
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Ljava/lang/Object;)V

    .line 601
    :goto_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcPrivacyFeatureFlags;->supportMusicBypass()Z

    move-result v58

    if-eqz v58, :cond_14

    .line 602
    new-instance v24, Lcom/android/settings/framework/preference/privacy/HtcMusicByPassPreference;

    .end local v24           #lockPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/privacy/HtcMusicByPassPreference;-><init>(Landroid/content/Context;)V

    .line 603
    .restart local v24       #lockPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual/range {v23 .. v24}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Ljava/lang/Object;)V

    .line 608
    :cond_14
    new-instance v24, Lcom/android/settings/framework/preference/security/HtcPhoneIncomingCallPreference;

    .end local v24           #lockPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/security/HtcPhoneIncomingCallPreference;-><init>(Landroid/content/Context;)V

    .line 609
    .restart local v24       #lockPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual/range {v23 .. v24}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 610
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Ljava/lang/Object;)V

    .line 614
    const v58, 0x7f06003b

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 617
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->isSIMPinSettingEnabled()Z

    move-result v58

    if-eqz v58, :cond_1f

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v58

    if-nez v58, :cond_1f

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v58

    if-nez v58, :cond_1f

    .line 621
    const-string v58, "sim_lock"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v44

    check-cast v44, Lcom/htc/preference/HtcPreferenceCategory;

    .line 622
    .restart local v44       #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v44, :cond_15

    .line 623
    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 627
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v58

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v42

    .line 630
    .local v42, simLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v58, "sim_lock_new_setting"

    move-object/from16 v0, v42

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v58

    if-eqz v58, :cond_19

    .line 635
    const v58, 0x7f0c08c9

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 636
    const v58, 0x7f0c08ca

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 652
    :goto_6
    new-instance v21, Landroid/content/Intent;

    .end local v21           #intent:Landroid/content/Intent;
    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 653
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v58, "com.android.settings"

    const-string v59, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 655
    new-instance v58, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    .line 656
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v58

    if-eqz v58, :cond_1c

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    const v59, 0x7f0c08cb

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 667
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 678
    .end local v42           #simLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_16
    :goto_8
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportSIMLockSettings()Z

    move-result v58

    if-eqz v58, :cond_17

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v58

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v43

    .line 681
    .local v43, simNetworkLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    const v58, 0x7f0c073b

    move-object/from16 v0, v43

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 683
    new-instance v21, Landroid/content/Intent;

    .end local v21           #intent:Landroid/content/Intent;
    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 684
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v58, "com.android.phone"

    const-string v59, "com.android.phone.NetworkSimLock"

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 686
    new-instance v58, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    const v59, 0x7f0c073c

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 695
    .end local v43           #simNetworkLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_17
    const/4 v15, 0x0

    .line 696
    .local v15, devicePolicyVisible:Z
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 697
    .local v25, mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v12

    .line 698
    .local v12, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v12, :cond_20

    .line 699
    const/16 v20, 0x0

    .local v20, i:I
    :goto_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v58

    move/from16 v0, v20

    move/from16 v1, v58

    if-ge v0, v1, :cond_20

    .line 700
    move/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v58

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 591
    .end local v12           #cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v15           #devicePolicyVisible:Z
    .end local v20           #i:I
    .end local v24           #lockPreference:Lcom/htc/preference/HtcPreference;
    .end local v25           #mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v44           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_18
    new-instance v24, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;-><init>(Landroid/content/Context;)V

    .line 593
    .restart local v24       #lockPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual/range {v23 .. v24}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 594
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Ljava/lang/Object;)V

    .line 596
    new-instance v24, Lcom/android/settings/framework/preference/privacy/HtcPhoneNotificationPreviewPreference;

    .end local v24           #lockPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/privacy/HtcPhoneNotificationPreviewPreference;-><init>(Landroid/content/Context;)V

    .line 597
    .restart local v24       #lockPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual/range {v23 .. v24}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 637
    .restart local v42       #simLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v44       #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_19
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v58

    if-eqz v58, :cond_1a

    .line 638
    const v58, 0x7f0c08bb

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 639
    const v58, 0x7f0c08bc

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto/16 :goto_6

    .line 641
    :cond_1a
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportAuCardWording()Z

    move-result v58

    if-eqz v58, :cond_1b

    .line 643
    const v58, 0x7f0c01d5

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 644
    const v58, 0x7f0c01d6

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto/16 :goto_6

    .line 646
    :cond_1b
    const v58, 0x7f0c0e2b

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 647
    const v58, 0x7f0c0e2c

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto/16 :goto_6

    .line 658
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v58

    if-eqz v58, :cond_1d

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    const v59, 0x7f0c08bd

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto/16 :goto_7

    .line 661
    :cond_1d
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportAuCardWording()Z

    move-result v58

    if-eqz v58, :cond_1e

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    const v59, 0x7f0c01d4

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto/16 :goto_7

    .line 665
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v58, v0

    const v59, 0x7f0c0e2d

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto/16 :goto_7

    .line 670
    .end local v42           #simLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v44           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_1f
    const-string v58, "sim_lock"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v44

    check-cast v44, Lcom/htc/preference/HtcPreferenceCategory;

    .line 671
    .restart local v44       #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v44, :cond_16

    .line 672
    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_8

    .line 703
    .restart local v12       #cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v15       #devicePolicyVisible:Z
    .restart local v25       #mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v58

    new-instance v59, Landroid/content/Intent;

    const-string v60, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v59 .. v60}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v60, 0x80

    invoke-virtual/range {v58 .. v60}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 706
    .local v4, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v4, :cond_23

    const/4 v10, 0x0

    .line 707
    .local v10, count:I
    :goto_a
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_b
    move/from16 v0, v20

    if-ge v0, v10, :cond_25

    .line 708
    move/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/pm/ResolveInfo;

    .line 710
    .local v39, ri:Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v17, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 711
    .local v17, dpi:Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v58

    if-nez v58, :cond_21

    invoke-virtual/range {v17 .. v17}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v58

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22

    .line 714
    :cond_21
    invoke-virtual/range {v17 .. v17}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v58

    const-string v59, "com.threelm.dm"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_22

    invoke-virtual/range {v17 .. v17}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v58

    const-string v59, "com.redbend.vdmc"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v58

    if-eqz v58, :cond_24

    .line 707
    .end local v17           #dpi:Landroid/app/admin/DeviceAdminInfo;
    :cond_22
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 706
    .end local v10           #count:I
    .end local v20           #i:I
    .end local v39           #ri:Landroid/content/pm/ResolveInfo;
    :cond_23
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_a

    .line 719
    .restart local v10       #count:I
    .restart local v17       #dpi:Landroid/app/admin/DeviceAdminInfo;
    .restart local v20       #i:I
    .restart local v39       #ri:Landroid/content/pm/ResolveInfo;
    :cond_24
    const/4 v15, 0x1

    .line 728
    .end local v17           #dpi:Landroid/app/admin/DeviceAdminInfo;
    .end local v39           #ri:Landroid/content/pm/ResolveInfo;
    :cond_25
    if-nez v15, :cond_26

    .line 729
    const-string v58, "manage_device_admin"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v36

    .line 730
    .local v36, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v36, :cond_26

    .line 731
    const-string v58, "device_admin_category"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    check-cast v58, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v58

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 738
    .end local v36           #preference:Lcom/htc/preference/HtcPreference;
    :cond_26
    sget-boolean v58, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-nez v58, :cond_27

    sget-boolean v58, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-eqz v58, :cond_32

    .line 739
    :cond_27
    const-string v58, "sim_lock"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v44

    .end local v44           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v44, Lcom/htc/preference/HtcPreferenceCategory;

    .line 740
    .restart local v44       #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v44, :cond_28

    .line 741
    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 759
    :cond_28
    :goto_d
    const-string v58, "keyguard_enable_widgets"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    check-cast v58, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    if-eqz v58, :cond_2a

    .line 761
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v58

    if-nez v58, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v58

    if-eqz v58, :cond_34

    .line 764
    :cond_29
    const-string v58, "security_category"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v41

    check-cast v41, Lcom/htc/preference/HtcPreferenceGroup;

    .line 766
    .restart local v41       #securityCategory:Lcom/htc/preference/HtcPreferenceGroup;
    if-eqz v41, :cond_2a

    .line 767
    const-string v58, "keyguard_enable_widgets"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 768
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 784
    .end local v41           #securityCategory:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_2a
    :goto_e
    const-string v58, "show_password"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    check-cast v58, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    const-string v59, "user"

    invoke-virtual/range {v58 .. v59}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/os/UserManager;

    .line 788
    .local v56, um:Landroid/os/UserManager;
    const-string v58, "no_config_credentials"

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v58

    if-nez v58, :cond_39

    .line 789
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 790
    const-string v58, "credential_storage_type"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    .line 792
    .local v11, credentialStorageType:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v58

    if-eqz v58, :cond_38

    const v47, 0x7f0c115f

    .line 795
    .local v47, storageSummaryRes:I
    :goto_f
    move/from16 v0, v47

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 803
    const/16 v58, 0x0

    move/from16 v0, v58

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 808
    const-string v58, "reset_credentials"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/htc/preference/HtcPreference;

    .line 814
    .end local v11           #credentialStorageType:Lcom/htc/preference/HtcPreference;
    .end local v47           #storageSummaryRes:I
    :goto_10
    const-string v58, "device_admin_category"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/htc/preference/HtcPreferenceGroup;

    .line 816
    .local v13, deviceAdminCategory:Lcom/htc/preference/HtcPreferenceGroup;
    const-string v58, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    check-cast v58, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    if-eqz v58, :cond_3a

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v59

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 829
    :cond_2b
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getUnknownSourcesVisibility(Landroid/content/Context;)Z

    move-result v58

    if-nez v58, :cond_3b

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    if-eqz v58, :cond_2c

    .line 831
    const-string v58, "device_admin_category"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v14

    check-cast v14, Lcom/htc/preference/HtcPreferenceCategory;

    .line 832
    .local v14, deviceAdminCaterogy:Lcom/htc/preference/HtcPreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 833
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 836
    invoke-virtual {v14}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v58

    if-nez v58, :cond_2c

    .line 837
    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 858
    .end local v14           #deviceAdminCaterogy:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_2c
    :goto_12
    const-string v58, "INACTIVITY_TIME"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v36

    .line 860
    .restart local v36       #preference:Lcom/htc/preference/HtcPreference;
    if-eqz v36, :cond_2d

    .line 861
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Ljava/lang/Object;)V

    .line 865
    :cond_2d
    const-string v58, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    check-cast v58, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 866
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v58, v0

    if-eqz v58, :cond_3f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->showVerifierSetting()Z

    move-result v58

    if-eqz v58, :cond_3f

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isVerifierInstalled()Z

    move-result v58

    if-eqz v58, :cond_3e

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v59

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 892
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v13}, Lcom/android/settings/SecuritySettings;->pluginPermissionManagerPerference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v13}, Lcom/android/settings/SecuritySettings;->pluginAutoStartManagerPerference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 897
    const-string v58, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Lcom/htc/preference/HtcPreference;

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Lcom/htc/preference/HtcPreference;

    move-object/from16 v58, v0

    if-eqz v58, :cond_2e

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v58, v0

    invoke-static/range {v58 .. v58}, Lcom/android/settings/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v55

    .line 900
    .local v55, total:I
    if-nez v55, :cond_41

    .line 901
    if-eqz v13, :cond_2e

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Lcom/htc/preference/HtcPreference;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 919
    .end local v55           #total:I
    :cond_2e
    :goto_14
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v58

    if-eqz v58, :cond_2f

    .line 920
    const-string v58, "install_credentials"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v35

    .line 921
    .local v35, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v35, :cond_2f

    .line 922
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v58

    if-eqz v58, :cond_43

    .line 923
    const v58, 0x7f0c09cf

    move-object/from16 v0, v35

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 924
    const v58, 0x7f0c09d0

    move-object/from16 v0, v35

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 933
    .end local v35           #pref:Lcom/htc/preference/HtcPreference;
    :cond_2f
    :goto_15
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 934
    .local v7, ciqIntent:Landroid/content/Intent;
    new-instance v58, Landroid/content/ComponentName;

    const-string v59, "com.carrieriq.tmobile.IQToggle"

    const-string v60, "com.carrieriq.tmobile.IQToggle.ui"

    invoke-direct/range {v58 .. v60}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v58

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v46

    .line 939
    .local v46, size:I
    sget-boolean v58, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v58, :cond_30

    .line 940
    sget-object v58, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "ciq size: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_30
    if-lez v46, :cond_31

    .line 943
    new-instance v6, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-direct {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 944
    .restart local v6       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v58, 0x7f0c1174

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 945
    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 947
    new-instance v8, Lcom/htc/preference/HtcPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-direct {v8, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 948
    .local v8, ciqPreference:Lcom/htc/preference/HtcPreference;
    const v58, 0x7f0c01bb

    move/from16 v0, v58

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 949
    const v58, 0x7f0c01bc

    move/from16 v0, v58

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 950
    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 951
    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 955
    .end local v6           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v8           #ciqPreference:Lcom/htc/preference/HtcPreference;
    :cond_31
    invoke-super/range {p0 .. p0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->applyDemoMode()V

    goto/16 :goto_4

    .line 722
    .end local v7           #ciqIntent:Landroid/content/Intent;
    .end local v13           #deviceAdminCategory:Lcom/htc/preference/HtcPreferenceGroup;
    .end local v36           #preference:Lcom/htc/preference/HtcPreference;
    .end local v46           #size:I
    .end local v56           #um:Landroid/os/UserManager;
    .restart local v39       #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v19

    .line 723
    .local v19, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v58, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Skipping "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 724
    .end local v19           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v19

    .line 725
    .local v19, e:Ljava/io/IOException;
    sget-object v58, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Skipping "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 745
    .end local v19           #e:Ljava/io/IOException;
    .end local v39           #ri:Landroid/content/pm/ResolveInfo;
    :cond_32
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v54

    .line 748
    .local v54, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v58, v0

    if-eqz v58, :cond_33

    invoke-virtual/range {v54 .. v54}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v58

    if-eqz v58, :cond_33

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->isSIMPinSettingEnabled()Z

    move-result v58

    if-nez v58, :cond_28

    .line 750
    :cond_33
    const-string v58, "sim_lock"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v44

    .end local v44           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v44, Lcom/htc/preference/HtcPreferenceCategory;

    .line 751
    .restart local v44       #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v44, :cond_28

    .line 752
    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_d

    .line 771
    .end local v54           #tm:Landroid/telephony/TelephonyManager;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v58

    and-int/lit8 v58, v58, 0x1

    if-eqz v58, :cond_35

    const/16 v16, 0x1

    .line 773
    .local v16, disabled:Z
    :goto_16
    if-eqz v16, :cond_36

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    const v59, 0x7f0c0c57

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 779
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v59, v0

    if-nez v16, :cond_37

    const/16 v58, 0x1

    :goto_18
    move-object/from16 v0, v59

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_e

    .line 771
    .end local v16           #disabled:Z
    :cond_35
    const/16 v16, 0x0

    goto :goto_16

    .line 777
    .restart local v16       #disabled:Z
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 779
    :cond_37
    const/16 v58, 0x0

    goto :goto_18

    .line 792
    .end local v16           #disabled:Z
    .restart local v11       #credentialStorageType:Lcom/htc/preference/HtcPreference;
    .restart local v56       #um:Landroid/os/UserManager;
    :cond_38
    const v47, 0x7f0c1160

    goto/16 :goto_f

    .line 810
    .end local v11           #credentialStorageType:Lcom/htc/preference/HtcPreference;
    :cond_39
    const-string v58, "credentials_management"

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v58

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_10

    .line 822
    .restart local v13       #deviceAdminCategory:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_3a
    sget-boolean v58, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v58, :cond_2b

    .line 823
    sget-object v58, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    const-string v59, "mToggleAppInstallation is null"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 842
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    if-eqz v58, :cond_3c

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 847
    :cond_3c
    invoke-static {}, Lcom/android/settings/framework/util/HtcMdmUtil;->isMDMApiSupported()Z

    move-result v58

    if-eqz v58, :cond_2c

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    if-eqz v58, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/android/settings/framework/util/HtcMdmUtil;->isUnknownSourcesLocked(Landroid/content/Context;)Z

    move-result v58

    if-eqz v58, :cond_2c

    .line 849
    sget-boolean v58, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v58, :cond_3d

    .line 850
    sget-object v58, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    const-string v59, "gray out unknown sources item by MDM policy"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_12

    .line 870
    .restart local v36       #preference:Lcom/htc/preference/HtcPreference;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_13

    .line 874
    :cond_3f
    if-eqz v13, :cond_40

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_13

    .line 877
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_13

    .line 905
    .restart local v55       #total:I
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getNumEnabledNotificationListeners()I

    move-result v33

    .line 906
    .local v33, n:I
    if-nez v33, :cond_42

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Lcom/htc/preference/HtcPreference;

    move-object/from16 v58, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v59

    const v60, 0x7f0c0cad

    invoke-virtual/range {v59 .. v60}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 910
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Lcom/htc/preference/HtcPreference;

    move-object/from16 v58, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v59

    const v60, 0x7f100009

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    aput-object v63, v61, v62

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v33

    move-object/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x0

    move/from16 v0, v60

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v60, v0

    invoke-static/range {v59 .. v60}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 926
    .end local v33           #n:I
    .end local v55           #total:I
    .restart local v35       #pref:Lcom/htc/preference/HtcPreference;
    :cond_43
    const v58, 0x7f0c09cd

    move-object/from16 v0, v35

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 927
    const v58, 0x7f0c09ce

    move-object/from16 v0, v35

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_15

    .line 424
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 362
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getNumEnabledNotificationListeners()I
    .locals 4

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, flat:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 964
    :goto_0
    return v2

    .line 963
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, components:[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private isHelpAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 278
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.showme"

    const-string v6, "com.htc.showme.ui.Search"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    const-string v4, "android.intent.extra.SUBJECT"

    const-string v5, "security"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 285
    sget-object v4, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    const-string v5, "Tips & Help application exists."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return v3

    .line 288
    :cond_0
    sget-object v3, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    const-string v4, "Tips & Help application does not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 968
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 1172
    check-cast p1, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 988
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 989
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .local v2, verification:Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 992
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 993
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 983
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchShowMe()V
    .locals 4

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.showme"

    const-string v3, "com.htc.showme.ui.Search"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "security"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 974
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 997
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

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

.method private warnAppInstallation()V
    .locals 4

    .prologue
    .line 1004
    const v0, 0x1040013

    .line 1005
    .local v0, positiveButtonId:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    const v0, 0x7f0c00a3

    .line 1009
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0eb2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0f4e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 1015
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1180
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 1184
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_speak_announce"

    invoke-static {v1, v2, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 1188
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v3, :cond_0

    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    .line 1207
    :goto_0
    return-void

    .line 1192
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 1194
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1195
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 1202
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;

    .line 1205
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->requestHandlers()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1019
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1020
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1025
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->onCreate(Landroid/os/Bundle;)V

    .line 295
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isHelpAvailable()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->setHasOptionsMenu(Z)V

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, launchlockdirect:Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "launch_lock_direct"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 302
    :cond_0
    if-eqz v0, :cond_1

    .line 309
    const-string v1, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v2, 0x7b

    const/4 v3, 0x0

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->finish()V

    .line 315
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 318
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 320
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->requestHandlers()V

    .line 327
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 330
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 255
    const v0, 0x2040396

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mHelpMenuItem:Landroid/view/MenuItem;

    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 257
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1029
    invoke-super {p0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->onDestroy()V

    .line 1030
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1033
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mHelpMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->launchShowMe()V

    .line 264
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1083
    invoke-super {p0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->onPause()V

    .line 1086
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1088
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 1210
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1094
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 1097
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1103
    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1167
    :cond_0
    :goto_0
    return v4

    .line 1106
    :cond_1
    const-string v5, "biometric_weak_improve_matching"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1107
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1109
    .local v0, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 1117
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_2
    const-string v5, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1118
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Lcom/htc/preference/HtcPreference;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1119
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 1124
    :cond_3
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1125
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1127
    .restart local v0       #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1133
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 1134
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1137
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_4
    const-string v5, "lockenabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1138
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 1139
    :cond_5
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1140
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 1147
    :cond_6
    const-string v5, "keyguard_enable_widgets"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1148
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    goto :goto_0

    .line 1149
    :cond_7
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v5, :cond_9

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v4

    :cond_8
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1152
    :cond_9
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v5, :cond_b

    .line 1153
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1154
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1155
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 1157
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 1159
    :cond_b
    const-string v5, "toggle_verify_applications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1160
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "package_verifier_enable"

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    move v3, v4

    :cond_c
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1164
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1037
    invoke-super {p0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->onResume()V

    .line 1041
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;

    .line 1043
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1044
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1048
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    .line 1049
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1057
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_2

    .line 1058
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "show_password"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1062
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_4

    .line 1063
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1066
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_5

    .line 1067
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1070
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1075
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->requestHandlers()V

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->onSuperPostResume()V

    .line 1078
    return-void

    :cond_6
    move v1, v3

    .line 1058
    goto :goto_0
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1215
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1217
    return-void
.end method
