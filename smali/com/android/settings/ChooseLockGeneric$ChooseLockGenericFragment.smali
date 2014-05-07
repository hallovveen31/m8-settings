.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static final ALWAY_SHOW_TUTORIAL:Z = true

.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final ENABLE_BACK_ARROW:Ljava/lang/String; = "enable_back_arrow"

.field private static final FALLBACK_REQUEST:I = 0x65

.field private static final FINISH_PENDING:Ljava/lang/String; = "finish_pending"

.field private static final KEY_UNLOCK_BACKUP_INFO:Ljava/lang/String; = "unlock_backup_info"

.field private static final KEY_UNLOCK_SET_BIOMETRIC_WEAK:Ljava/lang/String; = "unlock_set_biometric_weak"

.field private static final KEY_UNLOCK_SET_FINGERPRINT:Ljava/lang/String; = "unlock_set_fingerprint"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field private static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "biometric_weak_fallback"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WAITING_FOR_CONFIRMATION:Ljava/lang/String; = "waiting_for_confirmation"

.field public static final WHO_IS_CALLER:Ljava/lang/String; = "who_is_caller"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableBackArrow:Z

.field private mFinishPending:Z

.field private mIsFallback:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEnableBackArrow:Z

    .line 139
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    const-string v1, "ChooseLockGenericFragment init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateBundle()V

    .line 143
    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 530
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 642
    const/4 v1, 0x0

    .line 643
    .local v1, exist:Z
    if-eqz p1, :cond_0

    .line 645
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 646
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 647
    const/4 v1, 0x1

    .line 656
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    const-string v4, "It\'s not demo flow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V
    .locals 16
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 430
    .local v3, entries:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 431
    sget-object v13, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "disableUnusablePreferences mIsFallback is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v13}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v12

    .line 436
    .local v12, weakBiometricAvailable:Z
    const-string v13, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 437
    .local v7, mUm:Landroid/os/UserManager;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 438
    .local v10, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v9, 0x1

    .line 440
    .local v9, singleUser:Z
    :goto_0
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_17

    .line 441
    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    .line 442
    .local v8, pref:Lcom/htc/preference/HtcPreference;
    instance-of v13, v8, Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v13, :cond_4

    move-object v13, v8

    .line 443
    check-cast v13, Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v13}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, key:Ljava/lang/String;
    const/4 v2, 0x1

    .line 445
    .local v2, enabled:Z
    const/4 v11, 0x1

    .line 446
    .local v11, visible:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "com.htc.demoflo"

    invoke-static {v13, v14}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 447
    .local v5, isDemoFlow:Z
    const-string v13, "unlock_backup_info"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 448
    const v13, 0x7f040083

    invoke-virtual {v8, v13}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 449
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    .line 482
    :cond_1
    :goto_2
    const-string v13, "unlock_set_off"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "unlock_set_none"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    if-eqz v5, :cond_2

    .line 483
    const/4 v2, 0x0

    .line 486
    :cond_2
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_16

    .line 487
    :cond_3
    invoke-virtual {v3, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 440
    .end local v2           #enabled:Z
    .end local v5           #isDemoFlow:Z
    .end local v6           #key:Ljava/lang/String;
    .end local v11           #visible:Z
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 438
    .end local v4           #i:I
    .end local v8           #pref:Lcom/htc/preference/HtcPreference;
    .end local v9           #singleUser:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 454
    .restart local v2       #enabled:Z
    .restart local v4       #i:I
    .restart local v5       #isDemoFlow:Z
    .restart local v6       #key:Ljava/lang/String;
    .restart local v8       #pref:Lcom/htc/preference/HtcPreference;
    .restart local v9       #singleUser:Z
    .restart local v11       #visible:Z
    :cond_6
    const-string v13, "unlock_set_off"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 455
    if-gtz p1, :cond_7

    const/4 v2, 0x1

    .line 456
    :goto_4
    move v11, v9

    goto :goto_2

    .line 455
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 459
    :cond_8
    const-string v13, "unlock_set_none"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 460
    if-gtz p1, :cond_9

    const/4 v2, 0x1

    :goto_5
    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 461
    :cond_a
    const-string v13, "unlock_set_biometric_weak"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 462
    const v13, 0x8000

    move/from16 v0, p1

    if-le v0, v13, :cond_b

    move-object/from16 v0, p2

    iget-boolean v13, v0, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v13, :cond_c

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isStorageEncrypted()Z

    move-result v13

    if-nez v13, :cond_c

    const/4 v2, 0x1

    .line 464
    :goto_6
    move v11, v12

    goto :goto_2

    .line 462
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 466
    :cond_d
    const-string v13, "unlock_set_pattern"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 467
    const/high16 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_e

    const/4 v2, 0x1

    :goto_7
    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    goto :goto_7

    .line 468
    :cond_f
    const-string v13, "unlock_set_pin"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 469
    const/high16 v13, 0x2

    move/from16 v0, p1

    if-gt v0, v13, :cond_10

    const/4 v2, 0x1

    :goto_8
    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x0

    goto :goto_8

    .line 470
    :cond_11
    const-string v13, "unlock_set_password"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 471
    const/high16 v13, 0x6

    move/from16 v0, p1

    if-gt v0, v13, :cond_12

    const/4 v2, 0x1

    :goto_9
    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x0

    goto :goto_9

    .line 472
    :cond_13
    const-string v13, "unlock_set_fingerprint"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 473
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v13

    move/from16 v0, p1

    if-gt v0, v13, :cond_15

    const/4 v2, 0x1

    .line 474
    :goto_a
    const-string v13, "encryption"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "who_is_caller"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 476
    .local v1, bLaunchedFromEncryption:Z
    if-eqz v1, :cond_14

    .line 477
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintStorageEncryption()Z

    move-result v13

    and-int/2addr v2, v13

    .line 479
    :cond_14
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintSetting()Z

    move-result v11

    goto/16 :goto_2

    .line 473
    .end local v1           #bLaunchedFromEncryption:Z
    :cond_15
    const/4 v2, 0x0

    goto :goto_a

    .line 488
    :cond_16
    if-nez v2, :cond_4

    .line 489
    const v13, 0x7f0c0c89

    invoke-virtual {v8, v13}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 490
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 494
    .end local v2           #enabled:Z
    .end local v5           #isDemoFlow:Z
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #pref:Lcom/htc/preference/HtcPreference;
    .end local v11           #visible:Z
    :cond_17
    return-void
.end method

.method private getBiometricSensorIntent(I)Landroid/content/Intent;
    .locals 8
    .parameter "quality"

    .prologue
    const/4 v7, 0x0

    .line 535
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 538
    .local v0, fallBackIntent:Landroid/content/Intent;
    const-string v4, "lockscreen.biometric_weak_fallback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    const-string v4, "confirm_credentials"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    const-string v4, ":android:show_fragment_title"

    const v5, 0x7f0c0c77

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    const/4 v3, 0x1

    .line 543
    .local v3, showTutorial:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 544
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 547
    .local v2, pending:Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 548
    return-object v1
.end method

.method private isStorageEncrypted()Z
    .locals 3

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 502
    .local v0, result:Z
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    .line 503
    .local v1, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->canEncrypt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v2

    or-int/2addr v0, v2

    .line 508
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->canEncrypt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v2

    or-int/2addr v0, v2

    .line 514
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->canEncrypt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v2

    or-int/2addr v0, v2

    .line 519
    :cond_2
    return v0
.end method

.method private updateBundle()V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_0
    const-string v1, "extra_caller"

    const-string v2, "com.android.settings.SecuritySettings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setArguments(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 327
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 328
    .local v3, quality:I
    if-ne v3, v5, :cond_1

    .line 331
    const-string v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 332
    new-instance v0, Llibcore/util/MutableBoolean;

    invoke-direct {v0, v6}, Llibcore/util/MutableBoolean;-><init>(Z)V

    .line 333
    .local v0, allowBiometric:Llibcore/util/MutableBoolean;
    invoke-direct {p0, v3, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v3

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 336
    .local v2, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 339
    :cond_0
    const v4, 0x7f06003e

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 340
    invoke-direct {p0, v3, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    .line 344
    .end local v0           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v2           #prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(ILlibcore/util/MutableBoolean;)I
    .locals 2
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    const v1, 0x8000

    .line 351
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 352
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 353
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result v0

    .line 354
    .local v0, encryptionQuality:I
    if-le v0, p1, :cond_0

    .line 358
    if-eqz p2, :cond_2

    .line 359
    if-gt p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p1, v0

    .line 367
    .end local p1
    :goto_1
    return p1

    .line 359
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 360
    :cond_2
    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 373
    .local v0, minQuality:I
    if-ge p1, v0, :cond_0

    .line 374
    move p1, v0

    .line 376
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 5
    .parameter "quality"

    .prologue
    .line 388
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 389
    .local v1, encryptionStatus:I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 390
    .local v0, encrypted:Z
    :goto_0
    const/4 v2, 0x0

    .line 392
    .local v2, sdEncrypted:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sd_encryption"

    invoke-static {v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 395
    :goto_1
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    .line 396
    :cond_1
    const/high16 v3, 0x2

    if-ge p1, v3, :cond_2

    .line 397
    const/high16 p1, 0x2

    .line 400
    :cond_2
    return p1

    .line 389
    .end local v0           #encrypted:Z
    .end local v2           #sdEncrypted:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    .restart local v0       #encrypted:Z
    .restart local v2       #sdEncrypted:Z
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 4
    .parameter "quality"

    .prologue
    const/high16 v3, 0x1

    .line 404
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    if-ge p1, v3, :cond_0

    .line 406
    const/high16 p1, 0x1

    .line 416
    :cond_0
    :goto_0
    return p1

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 412
    if-ge p1, v3, :cond_0

    .line 413
    const/high16 p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkPasswordConfirmed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 220
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    const-string v2, "checkPasswordConfirmed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 237
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v1, :cond_3

    .line 226
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 227
    .local v0, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v1, 0x64

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 230
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_0

    .line 232
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_0

    .line 235
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_0
.end method

.method protected enabledBackupButton()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEnableBackArrow:Z

    return v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 660
    const v0, 0x7f0c12d5

    return v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 670
    const v0, 0x7f0c0c5f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 297
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 298
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 299
    iput-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 300
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 312
    :goto_0
    return-void

    .line 301
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 309
    iput-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    const-string v6, "onCreate"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    const-string v4, "onCreate(): isDisabledInDemoMode, finish activity."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 198
    :goto_0
    return-void

    .line 168
    :cond_2
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 169
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 170
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "enable_back_arrow"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEnableBackArrow:Z

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "confirm_credentials"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 179
    .local v2, confirmCredentials:Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v3, :cond_3

    .line 180
    if-nez v2, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    .line 186
    if-eqz p1, :cond_4

    .line 187
    const-string v3, "password_confirmed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 188
    const-string v3, "waiting_for_confirmation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 189
    const-string v3, "finish_pending"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 190
    const-string v3, "biometric_weak_fallback"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    .line 192
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 193
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_5

    instance-of v3, v0, Lcom/android/settings/ChooseLockGeneric;

    if-eqz v3, :cond_5

    move-object v1, v0

    .line 194
    check-cast v1, Lcom/android/settings/ChooseLockGeneric;

    .line 195
    .local v1, choose:Lcom/android/settings/ChooseLockGeneric;
    invoke-virtual {v1, p0}, Lcom/android/settings/ChooseLockGeneric;->setMyFragment(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 197
    .end local v1           #choose:Lcom/android/settings/ChooseLockGeneric;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->checkPasswordConfirmed()V

    goto/16 :goto_0

    .end local v0           #activity:Landroid/app/Activity;
    :cond_6
    move v3, v5

    .line 180
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 206
    const-string v3, "lockscreen.biometric_weak_fallback"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    .line 207
    if-eqz p1, :cond_0

    .line 208
    const-string v3, "confirm_credentials"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 209
    .local v0, confirmCredentials:Z
    if-nez v0, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 211
    .end local v0           #confirmCredentials:Z
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->checkPasswordConfirmed()V

    .line 213
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    sget-object v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent mPasswordConfirmed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWaitingForConfirmation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsFallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    return-void

    .restart local v0       #confirmCredentials:Z
    :cond_2
    move v1, v2

    .line 209
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 255
    .local v0, handled:Z
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 272
    :goto_0
    return v0

    .line 257
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 259
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    const v2, 0x8000

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 261
    :cond_2
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 263
    :cond_3
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 265
    :cond_4
    const-string v2, "unlock_set_fingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 267
    :cond_5
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 268
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 270
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 242
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mFinishPending:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v0, :cond_1

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 249
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    const-string v0, "biometric_weak_fallback"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 10
    .parameter "quality"
    .parameter "disabled"

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x65

    const/high16 v8, 0x200

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 569
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v3, :cond_0

    .line 570
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Tried to update password without confirming it"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result p1

    .line 577
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v3

    if-eq p1, v3, :cond_4

    const/high16 v3, 0x2

    if-lt p1, v3, :cond_4

    .line 579
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    .line 580
    .local v2, minLength:I
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 581
    const/4 v2, 0x4

    .line 583
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 584
    .local v1, maxLength:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 585
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    const-string v3, "lockscreen.password_max"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string v3, "confirm_credentials"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    const-string v3, "lockscreen.biometric_weak_fallback"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 590
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    if-eqz v3, :cond_3

    .line 591
    invoke-virtual {p0, v0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 639
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #maxLength:I
    .end local v2           #minLength:I
    :cond_2
    :goto_0
    return-void

    .line 594
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #maxLength:I
    .restart local v2       #minLength:I
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 595
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 598
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #maxLength:I
    .end local v2           #minLength:I
    :cond_4
    const/high16 v3, 0x1

    if-ne p1, v3, :cond_6

    .line 599
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 600
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "key_lock_method"

    const-string v4, "pattern"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v3, "confirm_credentials"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    const-string v3, "lockscreen.biometric_weak_fallback"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFallback:Z

    if-eqz v3, :cond_5

    .line 604
    invoke-virtual {p0, v0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 607
    :cond_5
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 608
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 611
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    const v3, 0x8000

    if-ne p1, v3, :cond_7

    .line 612
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 613
    .restart local v0       #intent:Landroid/content/Intent;
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 614
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 615
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v3

    if-ne p1, v3, :cond_a

    .line 616
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 617
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintSetting()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 618
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFp;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 621
    const-string v3, "confirm_credentials"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    const-string v3, "extra_back_up_button_visible"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEnableBackArrow:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUnlockMethodAndFinish(): mEnableBackArrow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEnableBackArrow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 627
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->TAG:Ljava/lang/String;

    const-string v4, "Fingerprint not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 630
    :cond_a
    if-nez p1, :cond_b

    .line 631
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->clearAltUnlockMethod()V

    .line 632
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 633
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 637
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0
.end method
