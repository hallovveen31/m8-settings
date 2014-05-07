.class public Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcFingerprintUpdateFpList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final DEBUG_FLAG:Z = false

.field private static final EXTRA_KEY_ENROLLED_FINGER_LIST:Ljava/lang/String; = "enrolled_finger_list"

.field private static final EXTRA_KEY_FINGER_ID:Ljava/lang/String; = "finger_id"

.field private static final FINGERPRINT_SHARED_PREFERENCES:Ljava/lang/String; = "fingerprint_shared_preferences"

.field private static final FINISH_AFTER_DELETE:I = 0x1

.field public static final HANDLE_FP_ON_CREATE_TASK:I = 0x0

.field public static final HANDLE_FP_REFRESH_PREFERENCE:I = 0x1

.field public static final HANDLE_FP_RESULT_FAILED:I = 0x4

.field public static final HANDLE_FP_RESULT_OK:I = 0x2

.field public static final HANDLE_FP_RESULT_OK_FINISH:I = 0x3

.field private static final INVALID_ENROLLED_LIST:I = -0x3e8

.field private static final KEY_DIRTY_BIT:Ljava/lang/String; = "dirty_bit"

.field private static final MAXNUM_OF_FINGERPRINT:I = 0x3

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final NUM_OF_FINGERPRINT:I = 0xb

.field private static final PREFKEY_ADD_NEW_FINGERPRINT:Ljava/lang/String; = "PREFKEY_ADD_NEW_FINGERPRINT"

.field private static final PREFKEY_CHANGE_BACKUP_PASSWORD:Ljava/lang/String; = "PREFKEY_CHANGE_BACKUP_PASSWORD"

.field public static final REQUEST_ADD_NEW_FINGERPRINT:I = 0x1

.field public static final REQUEST_CHANGE_BACKUP_PASSWORD:I = 0x2

.field public static final REQUEST_CONFIRMATION:I = 0x3

.field public static final REQUEST_RESET_BACKUP_PASSWORD:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;

.field private mActionDialog:Landroid/app/Dialog;

.field private mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field private mDeleteFingerRecordTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEnrolledFingerManager:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

.field private mFingerListMask:I

.field private mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

.field private mFpId:[I

.field private mFpIndex:[I

.field private mFpName:[Ljava/lang/String;

.field private mFpSummary:[Ljava/lang/String;

.field private mInfoDialog:Landroid/app/Dialog;

.field private mIsDirty:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedToConfirm:Z

.field private mNumOfFingerprint:I

.field private mPeekEnrolledFingerListTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

.field private mPrefGroup:Lcom/htc/preference/HtcPreferenceScreen;

.field private mSelectedFpId:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mThemeCategoryColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xb

    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 72
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerListMask:I

    .line 79
    iput v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpId:[I

    .line 81
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpIndex:[I

    .line 82
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpName:[Ljava/lang/String;

    .line 83
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpSummary:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/preference/HtcPreference;

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    .line 120
    iput-boolean v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mIsDirty:Z

    .line 123
    iput v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mThemeCategoryColor:I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 127
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Init:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 212
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerListMask:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->updateFpData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->enableFingerprintLock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSelectedFpId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->deleteFingerprint(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->showDeleteConfirmDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->refreshUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->checkFingerprintAndAltLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mEnrolledFingerManager:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPeekEnrolledFingerListTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPeekEnrolledFingerListTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->backToSecuritySettingsAndFinish()V

    return-void
.end method

.method private addFingerprint()V
    .locals 3

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->AddFingerprint:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 751
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 752
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.framework.activity.security.HtcFingerprintEnrollActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    const-string v1, "enrolled_finger_list"

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerListMask:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private backToSecuritySettingsAndFinish()V
    .locals 4

    .prologue
    .line 439
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 440
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 444
    return-void
.end method

.method private checkFingerprintAndAltLock()V
    .locals 3

    .prologue
    .line 563
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v1

    .line 564
    .local v1, isFingerprintLockEnabled:Z
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordLengthSufficient()Z

    move-result v0

    .line 572
    .local v0, isAltLockSufficient:Z
    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    if-eqz v2, :cond_2

    .line 573
    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->EnableFingerprintLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 574
    if-nez v1, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->showEnableFingerprintLockDialog()V

    .line 586
    :goto_0
    return-void

    .line 577
    :cond_0
    if-nez v0, :cond_1

    .line 578
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->setAltLockMethod(I)V

    goto :goto_0

    .line 581
    :cond_1
    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Show:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    goto :goto_0

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->addFingerprint()V

    goto :goto_0
.end method

.method private deleteFingerprint(IZ)V
    .locals 5
    .parameter "nFpId"
    .parameter "bFinish"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 930
    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->DeleteFingerprint:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 931
    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mDeleteFingerRecordTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;

    .line 932
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mDeleteFingerRecordTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 933
    return-void
.end method

.method private enableFingerprintLock()V
    .locals 2

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->isAltLockMethodSet()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 456
    .local v0, bNeedToResetAltLock:Z
    :goto_0
    if-nez v0, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 460
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->sendSetFingerprintLockRecord()V

    .line 462
    :cond_0
    return-void

    .line 454
    .end local v0           #bNeedToResetAltLock:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFpBgBitmap(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "nFpIndex"

    .prologue
    const/4 v1, 0x0

    .line 1045
    const v7, 0x7f0200c7

    .line 1046
    .local v7, nResId:I
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1048
    .local v0, bgBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x5

    if-gt p1, v2, :cond_0

    .line 1050
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1052
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1053
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1056
    .end local v0           #bgBitmap:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-object v0
.end method

.method private getFpIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "nFpIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 1009
    const/4 v9, -0x1

    .line 1011
    .local v9, nResId:I
    packed-switch p1, :pswitch_data_0

    .line 1022
    const/4 v1, 0x0

    .line 1041
    :goto_0
    return-object v1

    .line 1012
    :pswitch_0
    const v9, 0x7f0202a7

    .line 1025
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1026
    .local v0, iconBitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getFpBgBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1028
    .local v7, bgBitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1030
    .local v8, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x5

    if-gt p1, v2, :cond_0

    .line 1032
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1034
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1035
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1037
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_0
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 1038
    .local v10, paint:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1039
    invoke-virtual {v8, v0, v11, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1041
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1013
    .end local v0           #iconBitmap:Landroid/graphics/Bitmap;
    .end local v7           #bgBitmap:Landroid/graphics/Bitmap;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #paint:Landroid/graphics/Paint;
    :pswitch_1
    const v9, 0x7f0202a8

    goto :goto_1

    .line 1014
    :pswitch_2
    const v9, 0x7f0202a9

    goto :goto_1

    .line 1015
    :pswitch_3
    const v9, 0x7f0202aa

    goto :goto_1

    .line 1016
    :pswitch_4
    const v9, 0x7f0202ab

    goto :goto_1

    .line 1017
    :pswitch_5
    const v9, 0x7f0202a7

    goto :goto_1

    .line 1018
    :pswitch_6
    const v9, 0x7f0202a8

    goto :goto_1

    .line 1019
    :pswitch_7
    const v9, 0x7f0202a9

    goto :goto_1

    .line 1020
    :pswitch_8
    const v9, 0x7f0202aa

    goto :goto_1

    .line 1021
    :pswitch_9
    const v9, 0x7f0202ab

    goto :goto_1

    .line 1011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getFpName(I)Ljava/lang/String;
    .locals 2
    .parameter "nFpIndex"

    .prologue
    .line 1062
    packed-switch p1, :pswitch_data_0

    .line 1073
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1076
    .local v0, fpName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1063
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f0c020b

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1064
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f0c020a

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1065
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f0c0209

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1066
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f0c0208

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1067
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f0c0207

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1068
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_5
    const v1, 0x7f0c020c

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1069
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_6
    const v1, 0x7f0c020d

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1070
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_7
    const v1, 0x7f0c020e

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1071
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_8
    const v1, 0x7f0c020f

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1072
    .end local v0           #fpName:Ljava/lang/String;
    :pswitch_9
    const v1, 0x7f0c0210

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fpName:Ljava/lang/String;
    goto :goto_0

    .line 1062
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getThemeCategoryColor()I
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 342
    .local v1, ta:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 343
    .local v0, categoryColor:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    return v0
.end method

.method private initConfirmFlag()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "confirm_credentials"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    .line 356
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 358
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    goto :goto_0

    .line 364
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    goto :goto_0

    .line 370
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 378
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    goto :goto_0

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9000 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x55000 -> :sswitch_1
        0x60000 -> :sswitch_3
    .end sparse-switch
.end method

.method private isAltLockMethodSet()Z
    .locals 2

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->altUnlockMethodExists()Z

    move-result v0

    .line 495
    .local v0, bAltLockExist:Z
    if-nez v0, :cond_0

    .line 496
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->setAltLockMethod(I)V

    .line 498
    :cond_0
    return v0
.end method

.method private launchConfirmActivity()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 431
    .local v0, isLaunchingConfirmActivity:Z
    if-eqz v0, :cond_0

    .line 433
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->ConfirmCredentials:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 435
    :cond_0
    return v0
.end method

.method private refreshPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v2, -0x7

    .line 938
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPrefGroup:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPrefGroup:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 951
    new-instance v8, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 952
    .local v8, categoryFp:Lcom/htc/preference/HtcPreferenceCategory;
    const v1, 0x7f0c0224

    invoke-virtual {v8, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 953
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPrefGroup:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v8}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 956
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_4

    .line 957
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpId:[I

    aget v1, v1, v10

    if-ltz v1, :cond_3

    .line 958
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    aget-object v1, v1, v10

    if-nez v1, :cond_2

    .line 959
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v10

    .line 961
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    aget-object v1, v1, v10

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpName:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    aget-object v1, v1, v10

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpSummary:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    aget-object v1, v1, v10

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpIndex:[I

    aget v3, v3, v10

    invoke-direct {p0, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getFpIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 964
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    aget-object v1, v1, v10

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpIndex:[I

    aget v3, v3, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    aget-object v1, v1, v10

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 966
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerprintPreference:[Lcom/htc/preference/HtcPreference;

    aget-object v1, v1, v10

    invoke-virtual {v8, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 956
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 971
    :cond_4
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    if-ge v1, v12, :cond_5

    .line 972
    new-instance v6, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 973
    .local v6, addFpPref:Lcom/htc/preference/HtcPreference;
    const v1, 0x7f0c021d

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 974
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    if-nez v1, :cond_6

    .line 975
    const v1, 0x7f0c021e

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 985
    :goto_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x208009e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 986
    .local v0, insetAddDrawable:Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 987
    const-string v1, "PREFKEY_ADD_NEW_FINGERPRINT"

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 989
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPrefGroup:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 993
    .end local v0           #insetAddDrawable:Landroid/graphics/drawable/InsetDrawable;
    .end local v6           #addFpPref:Lcom/htc/preference/HtcPreference;
    :cond_5
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    if-lez v1, :cond_0

    .line 995
    new-instance v7, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 996
    .local v7, categoryBk:Lcom/htc/preference/HtcPreferenceCategory;
    const v1, 0x7f0c0225

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 997
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPrefGroup:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 999
    new-instance v9, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 1000
    .local v9, changeBkPwPref:Lcom/htc/preference/HtcPreference;
    const v1, 0x7f0c0223

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1001
    const-string v1, "PREFKEY_CHANGE_BACKUP_PASSWORD"

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v9, v11}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 1003
    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 977
    .end local v7           #categoryBk:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v9           #changeBkPwPref:Lcom/htc/preference/HtcPreference;
    .restart local v6       #addFpPref:Lcom/htc/preference/HtcPreference;
    :cond_6
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    rsub-int/lit8 v1, v1, 0x3

    if-ne v5, v1, :cond_7

    .line 978
    const v1, 0x7f0c0220

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 981
    :cond_7
    const v1, 0x7f0c021f

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private refreshUI()V
    .locals 1

    .prologue
    .line 590
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Show:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 591
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->refreshPreferences()V

    .line 592
    return-void
.end method

.method private saveAltLockMethod()V
    .locals 2

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 530
    .local v0, altLockQuality:I
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setAltUnlockMethod(I)V

    .line 531
    return-void
.end method

.method private sendSetFingerprintLockRecord()V
    .locals 4

    .prologue
    .line 477
    invoke-static {}, Lcom/htc/report/ulog/WrapReusableULogData;->obtain()Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v0

    .line 480
    .local v0, uLogData:Lcom/htc/report/ulog/WrapReusableULogData;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Lcom/htc/report/ulog/WrapReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v1

    const-string v2, "screenlock"

    invoke-virtual {v1, v2}, Lcom/htc/report/ulog/WrapReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "fingerprint"

    invoke-virtual {v1, v2, v3}, Lcom/htc/report/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    .line 485
    invoke-static {v0}, Lcom/htc/report/ulog/WrapULog;->log(Lcom/htc/report/ulog/WrapReusableULogData;)V

    .line 488
    invoke-virtual {v0}, Lcom/htc/report/ulog/WrapReusableULogData;->recycle()V

    .line 489
    return-void
.end method

.method private setAltLockMethod(I)V
    .locals 7
    .parameter "requestCode"

    .prologue
    const/high16 v6, 0x4

    .line 504
    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->ChangeAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    :goto_0
    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 524
    :goto_1
    return-void

    .line 504
    :cond_0
    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->EnableFingerprintLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    goto :goto_0

    .line 511
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 512
    .local v1, minLength:I
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 513
    const/4 v1, 0x4

    .line 516
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    .line 517
    .local v0, maxLength:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 518
    .local v2, passwordIntent:Landroid/content/Intent;
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string v3, "lockscreen.password_max"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string v3, "backup_password"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    const-string v3, "confirm_credentials"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private showActionDialog()V
    .locals 3

    .prologue
    .line 759
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 760
    .local v0, strArray:[Ljava/lang/String;
    const/4 v1, 0x0

    const v2, 0x7f0c022b

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 761
    const/4 v1, 0x1

    const v2, 0x7f0c022c

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 763
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c022a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionDialog:Landroid/app/Dialog;

    .line 795
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$6;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$6;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 802
    return-void
.end method

.method private showDeleteConfirmDialog()V
    .locals 3

    .prologue
    .line 805
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c022d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c022e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$8;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$8;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$7;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$7;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mConfirmDialog:Landroid/app/Dialog;

    .line 825
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mConfirmDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$9;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$9;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 832
    return-void
.end method

.method private showEnableFingerprintLockDialog()V
    .locals 3

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0226

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0229

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$3;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$3;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$2;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mInfoDialog:Landroid/app/Dialog;

    .line 418
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mInfoDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$4;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$4;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method private updateFpData()V
    .locals 13

    .prologue
    const v12, 0x7f0c0221

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 710
    :cond_0
    return-void

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    const/4 v3, 0x0

    .line 649
    .local v3, nIndex:I
    new-instance v4, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    invoke-direct {v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;-><init>()V

    .line 656
    .local v4, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    iput v10, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    .line 658
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v5, 0xb

    if-ge v2, v5, :cond_0

    .line 659
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpId:[I

    aput v9, v5, v2

    .line 660
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpName:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v2

    .line 662
    sget v5, Lcom/htc/fingerprintapi/HtcFingerprint;->FP_FINGER_NOT_USED:I

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerListMask:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerListMask:I

    if-ne v9, v5, :cond_3

    .line 658
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :cond_3
    iget v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 668
    shl-int v3, v11, v2

    .line 669
    iget v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerListMask:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    .line 670
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpId:[I

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    aput v2, v5, v6

    .line 671
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mEnrolledFingerManager:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {v5, v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecordById(I)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v4

    .line 672
    if-nez v4, :cond_4

    .line 677
    new-instance v4, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    .end local v4           #record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    invoke-direct {v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;-><init>()V

    .line 678
    .restart local v4       #record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    invoke-virtual {v4, v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setId(I)V

    .line 679
    invoke-virtual {v4, v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setFingerIndex(I)V

    .line 680
    new-instance v1, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    .line 681
    .local v1, enrollManager:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
    invoke-virtual {v1, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z

    .line 683
    .end local v1           #enrollManager:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpIndex:[I

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    invoke-virtual {v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getFingerIndex()I

    move-result v7

    aput v7, v5, v6

    .line 684
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpName:[Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    invoke-virtual {v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getFingerIndex()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getFpName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v12}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 689
    :cond_5
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpSummary:[Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    invoke-virtual {p0, v12}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 702
    :goto_2
    iget v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    goto :goto_1

    .line 692
    :cond_6
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFpSummary:[Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    const v7, 0x7f0c0222

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 842
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 844
    if-ne v4, p1, :cond_4

    .line 845
    if-nez p2, :cond_2

    .line 847
    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    if-nez v3, :cond_0

    .line 850
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "dirty_bit"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 853
    .local v0, isDirty:Z
    if-nez v0, :cond_1

    .line 855
    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 926
    .end local v0           #isDirty:Z
    :cond_0
    :goto_0
    return-void

    .line 860
    .restart local v0       #isDirty:Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "dirty_bit"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 867
    .end local v0           #isDirty:Z
    :cond_2
    if-ne v4, p2, :cond_3

    .line 868
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "dirty_bit"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 870
    .restart local v0       #isDirty:Z
    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    if-nez v3, :cond_0

    .line 871
    if-nez v0, :cond_0

    .line 872
    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 879
    .end local v0           #isDirty:Z
    :cond_3
    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 883
    :cond_4
    const/4 v3, 0x3

    if-ne v3, p1, :cond_7

    .line 884
    if-nez p2, :cond_6

    .line 885
    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 886
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "dirty_bit"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 887
    .restart local v0       #isDirty:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 888
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 895
    .local v1, isScreenOn:Z
    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    .line 896
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Activity;->setResult(I)V

    .line 897
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 900
    .end local v0           #isDirty:Z
    .end local v1           #isScreenOn:Z
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_6
    const/4 v3, -0x1

    if-ne v3, p2, :cond_0

    .line 903
    iget-boolean v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mIsDirty:Z

    if-eqz v3, :cond_0

    .line 904
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "dirty_bit"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 908
    :cond_7
    const/4 v3, 0x2

    if-ne v3, p1, :cond_8

    .line 909
    if-ne v4, p2, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->saveAltLockMethod()V

    .line 911
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->enableFingerprintLock()V

    goto/16 :goto_0

    .line 916
    :cond_8
    const/4 v3, 0x4

    if-ne v3, p1, :cond_0

    .line 917
    if-ne v4, p2, :cond_9

    .line 918
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->saveAltLockMethod()V

    .line 919
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->enableFingerprintLock()V

    goto/16 :goto_0

    .line 921
    :cond_9
    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 922
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Activity;->setResult(I)V

    .line 923
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 298
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_back_up_button_visible"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 303
    .local v0, bEnableBackArrow:Z
    new-instance v2, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 304
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 305
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 306
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c5f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v3, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 318
    new-instance v2, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mEnrolledFingerManager:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    .line 320
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 321
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "fingerprint_shared_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPrefGroup:Lcom/htc/preference/HtcPreferenceScreen;

    .line 327
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPrefGroup:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 330
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->initConfirmFlag()V

    .line 331
    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Init:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 334
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->getThemeCategoryColor()I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mThemeCategoryColor:I

    .line 335
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mThemeCategoryColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 337
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 618
    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mInfoDialog:Landroid/app/Dialog;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 623
    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mActionDialog:Landroid/app/Dialog;

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 628
    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mConfirmDialog:Landroid/app/Dialog;

    .line 632
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mIsDirty:Z

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 635
    :cond_3
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 636
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 596
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 598
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Show:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    if-ne v1, v2, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dirty_bit"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardStarted()Z

    move-result v0

    .line 607
    .local v0, isKeyguardStarted:Z
    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->backToSecuritySettingsAndFinish()V

    .line 611
    .end local v0           #isKeyguardStarted:Z
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 715
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 716
    :cond_0
    const/4 v0, 0x0

    .line 737
    :goto_0
    return v0

    .line 722
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSelectedFpId:I

    .line 724
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PREFKEY_ADD_NEW_FINGERPRINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 727
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->addFingerprint()V

    .line 737
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0

    .line 730
    :cond_3
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PREFKEY_CHANGE_BACKUP_PASSWORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->setAltLockMethod(I)V

    goto :goto_1

    .line 733
    :cond_4
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSelectedFpId:I

    .line 734
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->showActionDialog()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 537
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "dirty_bit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mIsDirty:Z

    .line 541
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Init:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNeedToConfirm:Z

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Init:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mIsDirty:Z

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    if-ne v0, v1, :cond_3

    .line 544
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->launchConfirmActivity()Z

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_3
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPeekEnrolledFingerListTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

    .line 548
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPeekEnrolledFingerListTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
