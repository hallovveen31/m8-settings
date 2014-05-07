.class public Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcFingerprintEnrollActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$6;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;
    }
.end annotation


# static fields
.field private static final ACTION_NAME_TIPS_FEED:Ljava/lang/String; = "com.htc.learnmore.LOG"

.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field public static final CONFIRM_EXISTING_REQUEST:I = 0x37

.field private static final DB_KEY_SHOW_FINGERPRINT_TUTORIAL:Ljava/lang/String; = "show_fingerprint_tutorial"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ENROLL_STATUS_ANIMATION_VIEW:I = 0x1

.field private static final ENROLL_WAITING_ANIMATION_VIEW:I = 0x2

.field private static final EXTRA_KEY_ENROLLED_FINGER_LIST:Ljava/lang/String; = "enrolled_finger_list"

.field private static final EXTRA_KEY_FINGER_ID:Ljava/lang/String; = "finger_id"

.field private static final FADE_IN_ANIMATION:I = 0x0

.field private static final FADE_OUT_ANIMATION:I = 0x1

.field private static final FINGERPRINT_SHARED_PREFERENCES:Ljava/lang/String; = "fingerprint_shared_preferences"

.field private static final ID_EMPTY_IMAGE:I = -0x1

.field private static final ID_EMPTY_MESSAGE:I = -0x1

.field private static final IMAGE_TYPE_FAIL_GENERIC:I = 0x1

.field private static final IMAGE_TYPE_FAIL_TOO_FAST:I = 0x3

.field private static final IMAGE_TYPE_FAIL_TOO_SLOW:I = 0x2

.field private static final IMAGE_TYPE_OK:I = 0x0

.field private static final INVALID_ENROLLED_LIST:I = -0x3e8

.field private static final KEY_DIRTY_BIT:Ljava/lang/String; = "dirty_bit"

.field private static final KEY_OF_SETTING_LOCKSCREEN_TIPS:Ljava/lang/String; = "htc_lockscreen_security_tip"

.field private static final LEFT_FOOTER_BUTTON:I = 0x3e8

.field private static final MAX_COUNT_RETRY_GET_FINGER_LIST:I = 0x5

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final NON_UI_MESSAGE_CLEAN_UP_FINGERPRINT_OBJECT:I = 0x69

.field private static final NON_UI_MESSAGE_DEBUG_DUMP_ENROLLED_STATUS:I = 0x68

.field private static final NON_UI_MESSAGE_GET_ENROLLED_FINGERPRINT_LIST:I = 0x6a

.field private static final NON_UI_MESSAGE_REMOVE_FINGERPRINT_AND_EXIT:I = 0x67

.field private static final NON_UI_MESSAGE_SAVE_FINGERPRINT_AND_EXIT:I = 0x65

.field private static final NON_UI_MESSAGE_START_ENROLL:I = 0x64

.field private static final NON_UI_MESSAGE_STOP_ENROLL_AND_EXIT:I = 0x66

.field private static final OPTION_NOT_ASSIGNED:I = 0x12c

.field private static final OPTION_NO_VIBRATE:I = 0x130

.field private static final OPTION_PRIMARY_TEXT:I = 0x12d

.field private static final OPTION_SECONDARY_TEXT:I = 0x12e

.field private static final OPTION_WITH_VIBRATE:I = 0x12f

.field private static final REQUIRED_SWIPE_COUNT_PROPERTY_NAME:Ljava/lang/String; = "htc.fp.eem.er.times"

.field static final RESULT_FINISHED:I = 0x1

.field private static final RETRY_GET_FINGER_LIST_DURATION:I = 0x1f4

.field private static final RIGHT_FOOTER_BUTTON:I = 0x3e9

.field public static final SET_ALT_LOCK_REQUEST:I = 0x58

.field private static final SHOW_SECURITY_DIALOG:Ljava/lang/String; = "show_security_dialog"

.field private static STATUS_AVAILABLE:I = 0x0

.field private static final STATUS_BAR_BACKGROUND_INDEX:I = 0x0

.field private static STATUS_ENROLLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final UI_MESSAGE_INIT_VIEW:I = 0xd3

.field private static final UI_MESSAGE_SWAP_ANIMATION:I = 0xce

.field private static final UI_MESSAGE_UPDATE_CANCEL_ALL_ANIMATION:I = 0xd1

.field private static final UI_MESSAGE_UPDATE_ENROLL_PRIMARY_TEXT:I = 0xcb

.field private static final UI_MESSAGE_UPDATE_ENROLL_PROGRESS:I = 0xca

.field private static final UI_MESSAGE_UPDATE_FAILED_ANIMATION:I = 0xd0

.field private static final UI_MESSAGE_UPDATE_FOOTER_BUTTON:I = 0xcc

.field private static final UI_MESSAGE_UPDATE_SHOW_ERROR_HINT:I = 0xd2

.field private static final UI_MESSAGE_UPDATE_STAGE:I = 0xc8

.field private static final tipsFeedActionCoverage:Ljava/lang/String; = "topic_tag-settings-screen_lock"

.field private static final tipsFeedCallingAppName:Ljava/lang/String; = "com.htc.lockscreen.security"

.field private static final tipsFeedShowMePackageName:Ljava/lang/String; = "com.htc.showme"


# instance fields
.field private bNeedToConfirm:Z

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;

.field private mAnimatorSetBottom:Landroid/animation/AnimatorSet;

.field private mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

.field private mAnimatorSetTop:Landroid/animation/AnimatorSet;

.field private mArrowAnimFadeInDuration:J

.field private mArrowAnimFadeOutDuration:J

.field private mArrowAnimFillTime:J

.field private mArrowAnimOffset:J

.field private mArrowAnimPauseTime:J

.field private mArrowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mArrowImageBottom:Landroid/widget/ImageView;

.field private mArrowImageMiddle:Landroid/widget/ImageView;

.field private mArrowImageTop:Landroid/widget/ImageView;

.field private mCancelQualityFailAnimTimerTask:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;

.field private mCapturedAnimDuration:J

.field private mCapturedAnimFillTime:J

.field private mCapturedAnimation:Landroid/animation/AnimatorSet;

.field private mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCommonBar:Lcom/htc/widget/HtcFooter;

.field private mCurrentFingerIndex:I

.field private mDefaultSelectedFingerIndex:I

.field private mEnrollFingerId:I

.field private mEnrollFingerInfoStringIdList:[I

.field private mEnrollProgress:I

.field private mEnrollStatusMap:Landroid/util/SparseIntArray;

.field private mEnrolledFingerList:I

.field private mEnteringAnim:Landroid/animation/ValueAnimator;

.field private mEnteringPathX:[F

.field private mEnteringPathY:[F

.field private mFailColor:I

.field private mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mFailedAnimDuration:J

.field private mFailedFadeInAnimation:Landroid/animation/AnimatorSet;

.field private mFailedFadeOutAnimation:Landroid/animation/AnimatorSet;

.field private mFingerDefaultNames:[I

.field private mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

.field private mFingerResIdList:[I

.field private mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

.field private mFingerprintName:Ljava/lang/String;

.field private mFingerprintQualityList:[I

.field private mFingerprintQualityNameList:[Ljava/lang/String;

.field private mFingerprintQualityNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintStatusFrame:Landroid/widget/ImageView;

.field private mFingerprintStatusImg:Landroid/widget/ImageView;

.field private mFingerprintStatusPanel:Landroid/widget/ImageView;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsFinishing:Z

.field private mIsWaitingAnimStopped:Z

.field private mLeavingAnim:Landroid/animation/ValueAnimator;

.field private mLeavingPathX:[F

.field private mLeavingPathY:[F

.field private mLeftPalmImageView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMovingFinger:Lcom/android/settings/framework/widget/HtcChangingDrawableImageView;

.field private mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrimaryText:Landroid/widget/TextView;

.field private mQualityFailAnimDuration:I

.field private mRequiredSamplingTimes:I

.field private mRetryCount:I

.field private mSecondaryText:Landroid/widget/TextView;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStatusAnimLayout:Landroid/widget/FrameLayout;

.field private mSuggestedFingerOrder:[I

.field private mSwipingAnim:Landroid/animation/ValueAnimator;

.field private mSwipingPathX:[F

.field private mSwipingPathY:[F

.field private mThemeCategoryColor:I

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;

.field private mUiHandler:Landroid/os/Handler;

.field private mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

.field private mWaitingAnimEnteringDuration:J

.field private mWaitingAnimLayout:Landroid/widget/FrameLayout;

.field private mWaitingAnimLeavingDuration:J

.field private mWaitingAnimPauseTime:J

.field private mWaitingAnimSwipingDuration:J

.field private mWaitingAnimTurningDuration:J

.field private mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    .line 121
    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    .line 280
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->STATUS_ENROLLED:I

    .line 281
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->STATUS_AVAILABLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v2, 0x1

    const/4 v5, 0x4

    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 192
    const-wide/16 v0, 0x16b

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimFadeInDuration:J

    .line 193
    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimFadeOutDuration:J

    .line 194
    const-wide/16 v0, 0xa5

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimOffset:J

    .line 195
    const-wide/16 v0, 0x63

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimFillTime:J

    .line 196
    const-wide/16 v0, 0x42

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimPauseTime:J

    .line 205
    iput-boolean v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mIsWaitingAnimStopped:Z

    .line 206
    const-wide/16 v0, 0x294

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimEnteringDuration:J

    .line 207
    const-wide/16 v0, 0xa5

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimTurningDuration:J

    .line 208
    const-wide/16 v0, 0x339

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimSwipingDuration:J

    .line 209
    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimLeavingDuration:J

    .line 210
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimPauseTime:J

    .line 222
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCapturedAnimFillTime:J

    .line 223
    const-wide/16 v0, 0x84

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCapturedAnimDuration:J

    .line 228
    const-wide/16 v0, 0x84

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedAnimDuration:J

    .line 232
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerDefaultNames:[I

    .line 246
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerResIdList:[I

    .line 260
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerInfoStringIdList:[I

    .line 274
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSuggestedFingerOrder:[I

    .line 275
    iput v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mDefaultSelectedFingerIndex:I

    .line 276
    iput v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    .line 291
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Tutorial:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 293
    iput-boolean v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->bNeedToConfirm:Z

    .line 301
    iput v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    .line 302
    iput-boolean v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mIsFinishing:Z

    .line 308
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mQualityFailAnimDuration:I

    .line 317
    iput v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mThemeCategoryColor:I

    .line 318
    iput v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailColor:I

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 328
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityList:[I

    .line 346
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FP_IMAGE_QUALITY_BASELINE_DATA_INVALID"

    aput-object v1, v0, v3

    const-string v1, "FP_IMAGE_QUALITY_FINGER_OFFSET"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "FP_IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_LEFT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FP_IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_RIGHT"

    aput-object v2, v0, v1

    const-string v1, "FP_IMAGE_QUALITY_FINGER_TOO_THIN"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "FP_IMAGE_QUALITY_GOOD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FP_IMAGE_QUALITY_NOT_A_FINGER_SWIPE"

    aput-object v2, v0, v1

    const-string v1, "FP_IMAGE_QUALITY_PRESSURE_TOO_HARD"

    aput-object v1, v0, v6

    const/16 v1, 0x8

    const-string v2, "FP_IMAGE_QUALITY_PRESSURE_TOO_LIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FP_IMAGE_QUALITY_PROCESS_FAILED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "FP_IMAGE_QUALITY_SKEW_TOO_LARGE"

    aput-object v2, v0, v1

    const-string v1, "FP_IMAGE_QUALITY_STICTION"

    aput-object v1, v0, v4

    const/16 v1, 0xc

    const-string v2, "FP_IMAGE_QUALITY_TOO_FAST"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FP_IMAGE_QUALITY_TOO_SHORT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "FP_IMAGE_QUALITY_TOO_SLOW"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FP_IMAGE_QUALITY_WET_FINGER"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityNameList:[Ljava/lang/String;

    .line 375
    iput v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRetryCount:I

    .line 1710
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    .line 1817
    return-void

    .line 232
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x2t 0xct 0x7ft
        0x8t 0x2t 0xct 0x7ft
        0x9t 0x2t 0xct 0x7ft
        0xat 0x2t 0xct 0x7ft
        0xbt 0x2t 0xct 0x7ft
        0xct 0x2t 0xct 0x7ft
        0xdt 0x2t 0xct 0x7ft
        0xet 0x2t 0xct 0x7ft
        0xft 0x2t 0xct 0x7ft
        0x10t 0x2t 0xct 0x7ft
    .end array-data

    .line 246
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x9t 0x7ft
        0xf5t 0x1t 0x9t 0x7ft
        0xf7t 0x1t 0x9t 0x7ft
        0xf8t 0x1t 0x9t 0x7ft
        0xf9t 0x1t 0x9t 0x7ft
        0xfat 0x1t 0x9t 0x7ft
        0xfbt 0x1t 0x9t 0x7ft
        0xfct 0x1t 0x9t 0x7ft
        0xfdt 0x1t 0x9t 0x7ft
        0xfet 0x1t 0x9t 0x7ft
    .end array-data

    .line 260
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4et 0x2t 0xct 0x7ft
        0x4dt 0x2t 0xct 0x7ft
        0x4ct 0x2t 0xct 0x7ft
        0x4bt 0x2t 0xct 0x7ft
        0x4at 0x2t 0xct 0x7ft
        0x4ft 0x2t 0xct 0x7ft
        0x50t 0x2t 0xct 0x7ft
        0x51t 0x2t 0xct 0x7ft
        0x52t 0x2t 0xct 0x7ft
        0x53t 0x2t 0xct 0x7ft
    .end array-data

    .line 274
    :array_3
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 328
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x40t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x0t 0x2t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x80t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x1t
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->cancelAllAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showErrorHintMessage(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->initView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->startEnroll()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->dumpEnrolledStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->cleanUpFingerprint()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->initEnrolledStatus()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getCurrentVisibleAnimationView()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->removeFingerprintAndExit()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->stopEnrollmentAndExit()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateEnrollProgress(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateFooterButton(ILjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->swapEnrollAnimationView(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showFailAnimation(I)V

    return-void
.end method

.method private cancelAllAnimation()V
    .locals 2

    .prologue
    .line 1244
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancelAllAnimation():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1248
    :cond_3
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1249
    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCapturedAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCapturedAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1250
    :cond_5
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeInAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeInAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1251
    :cond_6
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeOutAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeOutAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1252
    :cond_7
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1253
    :cond_8
    return-void
.end method

.method private cleanUpFingerprint()V
    .locals 3

    .prologue
    .line 1378
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUpFingerprint() begin: mFingerprint==null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-eqz v0, :cond_3

    .line 1380
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    .line 1381
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpFingerprint() cancel finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cleanUp()V

    .line 1383
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpFingerprint() cleanUp finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    .line 1386
    :cond_3
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpFingerprint() end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_4
    return-void

    .line 1378
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x2

    .line 1023
    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1024
    .local v1, fadeInAlphaAnim:Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1025
    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimFadeInDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1027
    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1028
    .local v2, fadeOutAlphaAnim:Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1029
    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimFillTime:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1030
    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimFadeOutDuration:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1032
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1033
    .local v0, animatorSet:Landroid/animation/AnimatorSet;
    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1035
    return-object v0

    .line 1023
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1027
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3ct
    .end array-data
.end method

.method private dumpEnrolledStatus()V
    .locals 4

    .prologue
    .line 1522
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v1}, Lcom/htc/fingerprintapi/HtcFingerprint;->getEnrolledFingerList()I

    move-result v0

    .line 1524
    .local v0, enrolledFingerListMask:I
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v1}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    .line 1525
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpEnrolledStatus(): enrolledFingerListMask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    .end local v0           #enrolledFingerListMask:I
    :cond_0
    return-void
.end method

.method private getBadImageQualityType(I)I
    .locals 2
    .parameter "imageQuality"

    .prologue
    .line 2004
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 2006
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "getImageQualityType(): IMAGE_TYPE_FAIL_TOO_FAST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_0
    const/4 v0, 0x3

    .line 2017
    :goto_0
    return v0

    .line 2009
    :cond_1
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_3

    .line 2011
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "getImageQualityType(): FP_IMAGE_QUALITY_TOO_SLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2016
    :cond_3
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "getImageQualityType(): IMAGE_TYPE_FAIL_GENERIC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentVisibleAnimationView()I
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mStatusAnimLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mStatusAnimLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    const/4 v0, 0x1

    .line 1177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getFingerMovingPathArray(I)[F
    .locals 4
    .parameter "resId"

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 988
    .local v2, tempArray:[I
    if-nez v2, :cond_1

    .line 989
    const/4 v1, 0x0

    .line 995
    :cond_0
    return-object v1

    .line 991
    :cond_1
    array-length v3, v2

    new-array v1, v3, [F

    .line 992
    .local v1, resultArray:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 993
    aget v3, v2, v0

    int-to-float v3, v3

    aput v3, v1, v0

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getThemeCategoryColor()I
    .locals 4

    .prologue
    .line 583
    sget-object v2, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 584
    .local v1, ta:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 585
    .local v0, categoryColor:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 586
    return v0
.end method

.method private initEnrolledStatus()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x1

    const/16 v6, -0x3e8

    .line 600
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v5, "initEnrolledStatus(): begin"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "enrolled_finger_list"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    .line 606
    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    if-eq v6, v4, :cond_5

    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    if-eq v7, v4, :cond_5

    .line 608
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnrolledStatus(): the mEnrolledFingerList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") from HtcFingerprintUpdateFpList is valid. don\'t need to query again."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put the record to mEnrollStatusMap, mEnrolledFingerList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_2
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollStatusMap:Landroid/util/SparseIntArray;

    .line 663
    const/4 v2, 0x0

    .line 664
    .local v2, indexMask:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-gt v1, v8, :cond_d

    .line 665
    const/4 v4, 0x1

    shl-int v2, v4, v1

    .line 666
    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    .line 667
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnrolledStatus(): fingerprint record found: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_3
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollStatusMap:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->STATUS_ENROLLED:I

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 664
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 613
    .end local v1           #i:I
    .end local v2           #indexMask:I
    :cond_5
    const/4 v0, 0x0

    .line 614
    .local v0, fingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;
    if-nez v0, :cond_6

    .line 615
    new-instance v0, Lcom/htc/fingerprintapi/HtcFingerprint;

    .end local v0           #fingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;
    new-instance v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$1;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    invoke-direct {v0, p0, v4}, Lcom/htc/fingerprintapi/HtcFingerprint;-><init>(Landroid/content/Context;Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;)V

    .line 628
    .restart local v0       #fingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;
    :cond_6
    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->getEnrolledFingerList()I

    move-result v4

    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    .line 629
    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    .line 630
    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cleanUp()V

    .line 631
    const/4 v0, 0x0

    .line 634
    sget v4, Lcom/htc/fingerprintapi/HtcFingerprint;->FP_FINGER_NOT_USED:I

    iget v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    if-ne v4, v5, :cond_7

    .line 635
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v5, "initEnrolledStatus(): no fingerprint record."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 639
    :cond_7
    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    if-ne v7, v4, :cond_c

    .line 642
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v5, "initEnrolledStatus(): get record failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_8
    const/4 v4, 0x5

    iget v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRetryCount:I

    if-le v4, v5, :cond_a

    .line 644
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnrolledStatus(): mRetryCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_9
    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRetryCount:I

    .line 646
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v5, 0x6a

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 686
    .end local v0           #fingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;
    :goto_2
    return-void

    .line 648
    .restart local v0       #fingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;
    :cond_a
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnrolledStatus(): retry count exceed the limitation, leaving now. - mRetryCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_b
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 656
    :cond_c
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnrolledStatus(): some fingerprint record found, fingerList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrolledFingerList:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 673
    .end local v0           #fingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;
    .restart local v1       #i:I
    .restart local v2       #indexMask:I
    :cond_d
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSuggestedFingerOrder:[I

    array-length v3, v4

    .line 674
    .local v3, length:I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_10

    .line 675
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnrolledStatus(): mSuggestedFingerOrder["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSuggestedFingerOrder:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_e
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_f

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnrolledStatus(): mEnrollStatusMap.get(mSuggestedFingerOrder["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollStatusMap:Landroid/util/SparseIntArray;

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSuggestedFingerOrder:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_f
    sget v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->STATUS_AVAILABLE:I

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollStatusMap:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSuggestedFingerOrder:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_12

    .line 678
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSuggestedFingerOrder:[I

    aget v4, v4, v1

    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mDefaultSelectedFingerIndex:I

    .line 682
    :cond_10
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_11

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnrolledStatus(): mDefaultSelectedFingerIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mDefaultSelectedFingerIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_11
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0xd3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 674
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 689
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v2, "initView()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showFingerprintTutorial()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Tutorial:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V

    .line 694
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "confirm_credentials"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 695
    .local v0, confirmCredentials:Z
    if-eqz v0, :cond_2

    .line 696
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v2, 0x37

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 700
    :goto_1
    return-void

    .line 693
    .end local v0           #confirmCredentials:Z
    :cond_1
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Naming:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V

    goto :goto_0

    .line 698
    .restart local v0       #confirmCredentials:Z
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->bNeedToConfirm:Z

    goto :goto_1
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    .line 1358
    const/4 v2, 0x0

    .line 1360
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1361
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    const/4 v2, 0x1

    .line 1366
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v4, "Package %s is not installed"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private printImageQualityForDebug(I)V
    .locals 7
    .parameter "imageQuality"

    .prologue
    .line 1987
    sget-boolean v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-nez v2, :cond_1

    .line 2001
    :cond_0
    :goto_0
    return-void

    .line 1988
    :cond_1
    const/4 v1, 0x0

    .line 1989
    .local v1, isHandledQuality:Z
    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printImageQualityForDebug(): imageQuality = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1991
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityList:[I

    aget v2, v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    .line 1992
    const/4 v1, 0x1

    .line 1993
    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printImageQualityForDebug(): the quality contains "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityNameMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityList:[I

    aget v5, v5, v0

    const-string v6, "quality name not found"

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1998
    :cond_3
    if-nez v1, :cond_0

    .line 1999
    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v3, "printImageQualityForDebug(): imageQuality unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private printPath()V
    .locals 7

    .prologue
    .line 1000
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v5, "printPath():"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathX:[F

    .local v0, arr$:[F
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 1003
    .local v3, n:F
    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printPath(): mEnteringPathX: element n = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    .end local v3           #n:F
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathY:[F

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 1006
    .restart local v3       #n:F
    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printPath(): mEnteringPathY: element n = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1008
    .end local v3           #n:F
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingPathX:[F

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 1009
    .restart local v3       #n:F
    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printPath(): mSwipingPathX: element n = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1011
    .end local v3           #n:F
    :cond_3
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingPathY:[F

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    .line 1012
    .restart local v3       #n:F
    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printPath(): mSwipingPathY: element n = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1014
    .end local v3           #n:F
    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingPathX:[F

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_5

    aget v3, v0, v1

    .line 1015
    .restart local v3       #n:F
    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printPath(): mLeavingPathX: element n = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1017
    .end local v3           #n:F
    :cond_5
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingPathY:[F

    array-length v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_6

    aget v3, v0, v1

    .line 1018
    .restart local v3       #n:F
    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printPath(): mLeavingPathY: element n = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1020
    .end local v3           #n:F
    :cond_6
    return-void
.end method

.method private removeFingerprintAndExit()V
    .locals 4

    .prologue
    .line 1390
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mIsFinishing:Z

    .line 1391
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-eqz v1, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v1, v2}, Lcom/htc/fingerprintapi/HtcFingerprint;->delete(I)Z

    move-result v0

    .line 1393
    .local v0, result:Z
    if-eqz v0, :cond_2

    .line 1394
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFingerprintAndExit(): mEnrollFingerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removal success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v1}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    .line 1400
    .end local v0           #result:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 1401
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setResult(I)V

    .line 1402
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->finish()V

    .line 1403
    return-void

    .line 1396
    .restart local v0       #result:Z
    :cond_2
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFingerprintAndExit(): mEnrollFingerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removal fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveFingerprintAndExit()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1411
    sget-boolean v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v8, "saveFingerprintAndExit(): begin"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mIsFinishing:Z

    .line 1415
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->altUnlockMethodExists()Z

    move-result v1

    .line 1416
    .local v1, bAltLockExist:Z
    if-nez v1, :cond_2

    .line 1417
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 1418
    .local v0, altLockQuality:I
    sget-boolean v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveFingerprintAndExit(): alt lock not exist, altLockQuality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_1
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->setAltUnlockMethod(I)V

    .line 1420
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 1424
    .end local v0           #altLockQuality:I
    :cond_2
    sget-boolean v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 1426
    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PASSWORD_QUALITY_FINGERPRINT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", PASSWORD_QUALITY_SOMETHING = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", PASSWORD_QUALITY_NUMERIC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", PASSWORD_QUALITY_ALPHABETIC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", PASSWORD_QUALITY_ALPHANUMERIC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", PASSWORD_QUALITY_COMPLEX = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLockPatternUtils.getActivePasswordQuality() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLockPatternUtils.getKeyguardStoredPasswordQuality() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLockPatternUtils.getAltUnlockMethod() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getAltUnlockMethod()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLockPatternUtils.isLockFingerprintEnabled() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLockPatternUtils.isSecure() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->sendSetFingerprintLockRecord()V

    .line 1445
    sget-boolean v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 1447
    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After======mLockPatternUtils.getActivePasswordQuality() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLockPatternUtils.getKeyguardStoredPasswordQuality() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLockPatternUtils.getAltUnlockMethod() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getAltUnlockMethod()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLockPatternUtils.isLockFingerprintEnabled() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLockPatternUtils.isSecure() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveFingerprintAndExit(): mCurrentFingerIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mEnrollFingerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFingerprintName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 1463
    :cond_4
    new-instance v3, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    .line 1464
    .local v3, enrollManager:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
    new-instance v4, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    invoke-direct {v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;-><init>()V

    .line 1465
    .local v4, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    iget v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v4, v7}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setId(I)V

    .line 1466
    iget v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    invoke-virtual {v4, v7}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setFingerIndex(I)V

    .line 1467
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setName(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v3, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z

    .line 1473
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showQuickLaunchDialog()V

    .line 1476
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-nez v7, :cond_6

    move v2, v5

    .line 1477
    .local v2, bShowSecurityDialog:Z
    :goto_0
    if-eqz v2, :cond_5

    .line 1478
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showSecurityDialog()V

    .line 1481
    :cond_5
    const v7, 0x7f0c0ca8

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1483
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v8, 0x69

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 1485
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "dirty_bit"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1486
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setResult(I)V

    .line 1487
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->finish()V

    .line 1488
    return-void

    .end local v2           #bShowSecurityDialog:Z
    :cond_6
    move v2, v6

    .line 1476
    goto :goto_0
.end method

.method private static sendIntent2Showme(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 1331
    if-eqz p0, :cond_1

    .line 1332
    const-string v1, "com.htc.showme"

    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1335
    .local v0, showMeIntent:Landroid/content/Intent;
    const-string v1, "com.htc.learnmore.LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    const-string v1, "callingApp"

    const-string v2, "com.htc.lockscreen.security"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-settings-screen_lock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string v1, "actionToDo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1339
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_lockscreen_security_tip"

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1347
    .end local v0           #showMeIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v2, "Context == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendSetFingerprintLockRecord()V
    .locals 4

    .prologue
    .line 1502
    invoke-static {}, Lcom/htc/report/ulog/WrapReusableULogData;->obtain()Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v0

    .line 1505
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

    .line 1510
    invoke-static {v0}, Lcom/htc/report/ulog/WrapULog;->log(Lcom/htc/report/ulog/WrapReusableULogData;)V

    .line 1513
    invoke-virtual {v0}, Lcom/htc/report/ulog/WrapReusableULogData;->recycle()V

    .line 1514
    return-void
.end method

.method private setAltLock()V
    .locals 8

    .prologue
    const/high16 v7, 0x4

    const/4 v6, 0x0

    .line 1530
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1531
    .local v0, devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    .line 1532
    .local v2, minLength:I
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    .line 1533
    const/4 v2, 0x4

    .line 1535
    :cond_0
    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 1536
    .local v1, maxLength:I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 1537
    .local v3, passwordIntent:Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    const-string v4, "lockscreen.password_min"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1539
    const-string v4, "lockscreen.password_max"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1540
    const-string v4, "backup_password"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1541
    const-string v4, "confirm_credentials"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1542
    const-string v4, "show_security_dialog"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1543
    const/16 v4, 0x58

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1544
    return-void
.end method

.method private setupTranslucentStatusBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 568
    const v5, 0x7f090034

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 569
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 570
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 574
    :cond_0
    sget-object v5, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 575
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 576
    .local v0, bgColor:I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 578
    .local v2, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 579
    .local v1, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 580
    return-void
.end method

.method private showErrorHintMessage(I)V
    .locals 4
    .parameter "stringId"

    .prologue
    .line 1199
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorHintMessage(): stringId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 1204
    :cond_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1205
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorHintMessage(): message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mToast:Landroid/widget/Toast;

    .line 1207
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1209
    :cond_3
    return-void
.end method

.method private showFailAnimation(I)V
    .locals 11
    .parameter "which"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 1212
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showFailAnimation(): which = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v6, 0xce

    invoke-virtual {v5, v6, v9, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1215
    if-nez p1, :cond_1

    .line 1217
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageTop:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1218
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1219
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1220
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const v5, 0x7f0202a5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1221
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1223
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1224
    .local v0, fadeInScaleXAnim:Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1225
    .local v1, fadeInScaleYAnim:Landroid/animation/ValueAnimator;
    iget-wide v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedAnimDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1226
    iget-wide v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedAnimDuration:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1227
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeInAnimation:Landroid/animation/AnimatorSet;

    .line 1228
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeInAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1229
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeInAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1230
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeInAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 1241
    .end local v0           #fadeInScaleXAnim:Landroid/animation/ValueAnimator;
    .end local v1           #fadeInScaleYAnim:Landroid/animation/ValueAnimator;
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1233
    .local v2, fadeOutScaleXAnim:Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1234
    .local v3, fadeOutScaleYAnim:Landroid/animation/ValueAnimator;
    iget-wide v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedAnimDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1235
    iget-wide v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedAnimDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1236
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeOutAnimation:Landroid/animation/AnimatorSet;

    .line 1237
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeOutAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1238
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeOutAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1239
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeOutAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1223
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1224
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1232
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
    .end array-data

    .line 1233
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
    .end array-data
.end method

.method private showFingerprintTutorial()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_fingerprint_tutorial"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showHintSelectFingerAnimation(Z)V
    .locals 4
    .parameter "visiblle"

    .prologue
    .line 1183
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerResIdList:[I

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mDefaultSelectedFingerIndex:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    .line 1184
    .local v1, hintFingerView:Lcom/htc/widget/HtcImageButton;
    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setBackgroundResource(I)V

    .line 1185
    invoke-virtual {v1}, Lcom/htc/widget/HtcImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1188
    invoke-virtual {v1}, Lcom/htc/widget/HtcImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1189
    .local v0, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p1, :cond_0

    .line 1191
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1196
    :goto_0
    return-void

    .line 1193
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1194
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showQuickLaunchDialog()V
    .locals 3

    .prologue
    .line 1594
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1595
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1596
    const-string v1, "finger_id"

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->startActivity(Landroid/content/Intent;)V

    .line 1598
    return-void
.end method

.method private showSecurityDialog()V
    .locals 4

    .prologue
    .line 1587
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Lcom/htc/widget/HtcEditText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1588
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SecurityDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1589
    .local v0, securitydialog:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1590
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->startActivity(Landroid/content/Intent;)V

    .line 1591
    return-void
.end method

.method private showStopEnrollDialog()V
    .locals 4

    .prologue
    .line 1549
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0213

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0214

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$3;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$2;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1575
    .local v0, confirmDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$4;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1583
    return-void
.end method

.method private startEnroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1601
    const/4 v0, 0x0

    .line 1604
    .local v0, result:I
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    .line 1605
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    if-lt v1, v5, :cond_0

    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    .line 1606
    :cond_0
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startEnroll(): mEnrollFingerId not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_1
    const/4 v0, -0x1

    .line 1615
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startEnroll(): mEnrollFingerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_2
    if-nez v0, :cond_6

    .line 1618
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v2, "startEnroll() success, waiting for event callback now."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_3
    :goto_1
    return-void

    .line 1609
    :cond_4
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-nez v1, :cond_5

    .line 1610
    new-instance v1, Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-direct {v1, p0, p0}, Lcom/htc/fingerprintapi/HtcFingerprint;-><init>(Landroid/content/Context;Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    .line 1612
    :cond_5
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerId:I

    invoke-virtual {v1, v2}, Lcom/htc/fingerprintapi/HtcFingerprint;->enroll(I)I

    move-result v0

    goto :goto_0

    .line 1620
    :cond_6
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1621
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private startWaitingAnimation()V
    .locals 17

    .prologue
    .line 1104
    sget-object v12, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v13, "startWaitingAnimation():"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_0

    .line 1106
    sget-object v12, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v13, "startWaitingAnimation(): null != mWaitingAnimatorSet. cancel it."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1110
    :cond_0
    sget-object v12, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathX:[F

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1111
    .local v3, enteringPathXValueHolder:Landroid/animation/PropertyValuesHolder;
    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathY:[F

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1112
    .local v4, enteringPathYValueHolder:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathX:[F

    array-length v12, v12

    new-array v1, v12, [I

    .line 1113
    .local v1, enteringFingerDrawableSequence:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathX:[F

    array-length v12, v12

    if-ge v5, v12, :cond_2

    .line 1115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathX:[F

    array-length v12, v12

    add-int/lit8 v12, v12, -0x6

    if-lt v5, v12, :cond_1

    .line 1116
    const v12, 0x7f0202cb

    aput v12, v1, v5

    .line 1113
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    const v12, 0x7f0202ca

    aput v12, v1, v5

    goto :goto_1

    .line 1122
    :cond_2
    const-string v12, "ContentDrawable"

    invoke-static {v12, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1123
    .local v2, enteringImageValueHolder:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mMovingFinger:Lcom/android/settings/framework/widget/HtcChangingDrawableImageView;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v2, v13, v14

    invoke-static {v12, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringAnim:Landroid/animation/ValueAnimator;

    .line 1124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimEnteringDuration:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimTurningDuration:J

    add-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1127
    sget-object v12, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingPathX:[F

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 1128
    .local v10, swipingPathXValueHolder:Landroid/animation/PropertyValuesHolder;
    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingPathY:[F

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 1129
    .local v11, swipingPathYValueHolder:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mMovingFinger:Lcom/android/settings/framework/widget/HtcChangingDrawableImageView;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-static {v12, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingAnim:Landroid/animation/ValueAnimator;

    .line 1130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimSwipingDuration:J

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingAnim:Landroid/animation/ValueAnimator;

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x3fc0

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1134
    sget-object v12, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingPathX:[F

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 1135
    .local v8, leavingPathXValueHolder:Landroid/animation/PropertyValuesHolder;
    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingPathY:[F

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 1136
    .local v9, leavingPathYValueHolder:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingPathX:[F

    array-length v12, v12

    new-array v6, v12, [I

    .line 1137
    .local v6, leavingFingerDrawableSequence:[I
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingPathX:[F

    array-length v12, v12

    if-ge v5, v12, :cond_4

    .line 1138
    if-nez v5, :cond_3

    .line 1139
    const v12, 0x7f0202cb

    aput v12, v6, v5

    .line 1137
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1141
    :cond_3
    const v12, 0x7f0202ca

    aput v12, v6, v5

    goto :goto_3

    .line 1145
    :cond_4
    const-string v12, "ContentDrawable"

    invoke-static {v12, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 1146
    .local v7, leavingImageValueHolder:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mMovingFinger:Lcom/android/settings/framework/widget/HtcChangingDrawableImageView;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    const/4 v14, 0x2

    aput-object v7, v13, v14

    invoke-static {v12, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingAnim:Landroid/animation/ValueAnimator;

    .line 1147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimLeavingDuration:J

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1149
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringAnim:Landroid/animation/ValueAnimator;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingAnim:Landroid/animation/ValueAnimator;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingAnim:Landroid/animation/ValueAnimator;

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 1157
    return-void
.end method

.method private stopEnrollmentAndExit()V
    .locals 2

    .prologue
    .line 1371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mIsFinishing:Z

    .line 1372
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 1373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setResult(I)V

    .line 1374
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->finish()V

    .line 1375
    return-void
.end method

.method private swapEnrollAnimationView(I)V
    .locals 6
    .parameter "visibleView"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1160
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapEnrollAnimation(): visibleView = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v4, p1, :cond_0

    const-string v0, "ENROLL_STATUS_ANIMATION_VIEW"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    if-ne v4, p1, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mStatusAnimLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1171
    :goto_1
    return-void

    .line 1160
    :cond_0
    const-string v0, "ENROLL_WAITING_ANIMATION_VIEW"

    goto :goto_0

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mStatusAnimLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateEnrollProgress(Ljava/lang/Object;II)V
    .locals 11
    .parameter "update"
    .parameter "option"
    .parameter "vibrateOption"

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x0

    .line 1048
    sget-boolean v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEnrollProgress(): mUiStage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    instance-of v6, p1, Ljava/lang/Integer;

    if-eqz v6, :cond_9

    .line 1053
    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-eq v6, v7, :cond_2

    .line 1101
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 1055
    .restart local p1
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1056
    .local v2, progress:I
    sget-boolean v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEnrollProgress(): progress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_3
    if-gez v2, :cond_4

    move v2, v5

    .line 1058
    :cond_4
    if-le v2, v4, :cond_5

    move v2, v4

    .line 1059
    :cond_5
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 1060
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    if-ge v1, v4, :cond_a

    .line 1062
    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i*100/REQUIRED_ENROLL_TIMES = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v1, 0x64

    iget v8, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    div-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(i+1)*100/REQUIRED_ENROLL_TIMES = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    mul-int/lit8 v7, v7, 0x64

    iget v8, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    div-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    if-nez v2, :cond_7

    .line 1066
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerInfoStringIdList:[I

    iget v8, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0216

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1069
    :cond_7
    mul-int/lit8 v4, v1, 0x64

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    div-int/2addr v4, v6

    if-gt v4, v2, :cond_6

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x64

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    div-int/2addr v4, v6

    if-le v4, v2, :cond_6

    .line 1070
    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_8

    .line 1071
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerInfoStringIdList:[I

    iget v8, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c021c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1075
    :cond_8
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerInfoStringIdList:[I

    iget v8, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0219

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    sub-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1082
    .end local v1           #i:I
    .end local v2           #progress:I
    .restart local p1
    :cond_9
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object v0, p1

    .line 1083
    check-cast v0, Ljava/lang/String;

    .line 1084
    .local v0, content:Ljava/lang/String;
    const/16 v4, 0x12d

    if-ne v4, p2, :cond_b

    .line 1085
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 1086
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerInfoStringIdList:[I

    iget v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    .end local v0           #content:Ljava/lang/String;
    .end local p1
    :cond_a
    :goto_3
    const/16 v4, 0x12f

    if-ne v4, p3, :cond_1

    .line 1098
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 1099
    .local v3, vibrator:Landroid/os/Vibrator;
    iget-wide v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCapturedAnimDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 1090
    .end local v3           #vibrator:Landroid/os/Vibrator;
    .restart local v0       #content:Ljava/lang/String;
    .restart local p1
    :cond_b
    const/16 v4, 0x12e

    if-ne v4, p2, :cond_a

    .line 1091
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 1092
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateFingerprintName()V
    .locals 3

    .prologue
    .line 1406
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFingerprintName(): mCurrentFingerIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerDefaultNames:[I

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintName:Ljava/lang/String;

    .line 1408
    return-void
.end method

.method private updateFingerprintTutorialDB(Z)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_fingerprint_tutorial"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFooterButton(ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 3
    .parameter "which"
    .parameter "enabled"
    .parameter "label"

    .prologue
    .line 1039
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateFooterButton():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_0
    const/16 v1, 0x3e8

    if-ne v1, p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterLeftButton:Landroid/widget/TextView;

    .line 1042
    .local v0, footerButton:Landroid/widget/TextView;
    :goto_0
    if-nez v0, :cond_3

    .line 1045
    :cond_1
    :goto_1
    return-void

    .line 1040
    .end local v0           #footerButton:Landroid/widget/TextView;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterRightButton:Landroid/widget/TextView;

    goto :goto_0

    .line 1043
    .restart local v0       #footerButton:Landroid/widget/TextView;
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1044
    :cond_4
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1688
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1689
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(): requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_0
    const/16 v0, 0x37

    if-ne v0, p1, :cond_1

    .line 1692
    const/4 v0, -0x1

    if-eq v0, p2, :cond_3

    .line 1693
    iput-boolean v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mIsFinishing:Z

    .line 1694
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setResult(I)V

    .line 1695
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->finish()V

    .line 1700
    :cond_1
    :goto_0
    const/16 v0, 0x58

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->SetAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v0, v1, :cond_2

    .line 1702
    if-ne v4, p2, :cond_4

    .line 1703
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->saveFingerprintAndExit()V

    .line 1708
    :cond_2
    :goto_1
    return-void

    .line 1697
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->bNeedToConfirm:Z

    goto :goto_0

    .line 1705
    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2024
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animator"

    .prologue
    const/16 v4, 0xce

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2028
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_1

    .line 2031
    iget-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimPauseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2032
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCapturedAnimation:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-eq v0, v1, :cond_2

    .line 2036
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusPanel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2038
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2039
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailedFadeOutAnimation:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_3

    .line 2040
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2041
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V

    .line 2042
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2043
    :cond_3
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimatorSet:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    .line 2045
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mIsWaitingAnimStopped:Z

    if-nez v0, :cond_0

    .line 2048
    iget-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimPauseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2049
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2057
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2062
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x64

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1627
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 1628
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v1, v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->leftMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    if-ne v1, v2, :cond_0

    .line 1629
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showStopEnrollDialog()V

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 1632
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Tutorial:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_2

    .line 1633
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Naming:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V

    goto :goto_0

    .line 1634
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Naming:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_3

    .line 1636
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateFingerprintName()V

    .line 1637
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V

    .line 1638
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    invoke-virtual {v1, v6}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1639
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_6

    .line 1640
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->SetAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V

    .line 1641
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->altUnlockMethodExists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1643
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v2, "onClick(): mLockPatternUtils.altUnlockMethodExists() == true, no need to set again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->saveFingerprintAndExit()V

    goto :goto_0

    .line 1647
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setAltLock()V

    goto :goto_0

    .line 1649
    :cond_6
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v1, v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->rightMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Retry:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    if-ne v1, v2, :cond_0

    .line 1651
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xd0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1656
    :cond_7
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Naming:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v3, :cond_0

    .line 1660
    invoke-direct {p0, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showHintSelectFingerAnimation(Z)V

    .line 1661
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    .line 1662
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-gt v0, v3, :cond_a

    .line 1663
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    if-ne v1, v0, :cond_8

    .line 1664
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f0202a1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 1665
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcImageButton;->setClickable(Z)V

    .line 1662
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1667
    :cond_8
    sget v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->STATUS_ENROLLED:I

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollStatusMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 1668
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f0202c7

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 1669
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcImageButton;->setClickable(Z)V

    goto :goto_2

    .line 1672
    :cond_9
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f0202c8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 1673
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcImageButton;->setClickable(Z)V

    goto :goto_2

    .line 1677
    :cond_a
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(): selected finger index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateFingerprintName()V

    .line 1681
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V

    .line 1682
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    invoke-virtual {v1, v6}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 510
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->requestWindowFeature(I)Z

    .line 512
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 515
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setupTranslucentStatusBar()V

    .line 516
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getThemeCategoryColor()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mThemeCategoryColor:I

    .line 517
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mThemeCategoryColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailColor:I

    .line 519
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 522
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 523
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 524
    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 525
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 528
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 529
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 532
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 535
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 538
    const-string v1, "fingerprint_shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 539
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dirty_bit"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    new-instance v1, Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityList:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityNameMap:Landroid/util/SparseArray;

    .line 543
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityNameMap:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityList:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintQualityNameList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mTimer:Ljava/util/Timer;

    .line 549
    const-string v1, "htc.fp.eem.er.times"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    .line 550
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): mRequiredSamplingTimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    if-nez v1, :cond_3

    .line 553
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HtcFingerprintEnrollActivityHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWorkerThread:Landroid/os/HandlerThread;

    .line 554
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 555
    new-instance v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    .line 557
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 558
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1280
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    .line 1282
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 1283
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1284
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCancelQualityFailAnimTimerTask:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;

    if-eqz v0, :cond_2

    .line 1289
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCancelQualityFailAnimTimerTask:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->cancel()Z

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1294
    :cond_3
    return-void
.end method

.method public onEvent(Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/16 v11, 0x12d

    const/16 v8, 0xc8

    const/4 v10, 0x2

    const/16 v9, 0xcb

    const/4 v5, 0x0

    .line 1839
    iget v4, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventID:I

    sparse-switch v4, :sswitch_data_0

    .line 1981
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event Recd: Unhandled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_0
    :goto_0
    return-void

    .line 1846
    :sswitch_0
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_EVT_ENROLL_CAPTURE_STATUS "

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_1
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1851
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    iget-object v6, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventData:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lcom/htc/fingerprintapi/HtcFingerprint;->convertEnrollCaptureStatus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;

    .line 1852
    .local v3, status:Lcom/htc/fingerprintapi/EnrollCaptureStatus;
    if-eqz v3, :cond_0

    .line 1853
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEvent(): FP_EVT_ENROLL_CAPTURE_STATUS status.progress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;->progress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \n status.badSwipes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;->badSwipes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n status.templateResult = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;->templateResult:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n status.totalSwipes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;->totalSwipes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n status.imageQuality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;->imageQuality:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_2
    iget v1, v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;->imageQuality:I

    .line 1861
    .local v1, imgQuality:I
    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->printImageQualityForDebug(I)V

    .line 1863
    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    if-lez v4, :cond_7

    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    const/16 v6, 0x64

    if-gt v4, v6, :cond_7

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    .line 1864
    .local v2, previousProgress:I
    :goto_1
    iget v4, v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;->progress:I

    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    .line 1866
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEvent(): FP_EVT_ENROLL_CAPTURE_STATUS, mEnrollProgress("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), previousProgress("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_3
    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    if-le v4, v2, :cond_8

    .line 1874
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_EVT_ENROLL_CAPTURE_STATUS, valid swipe, update the progress and send out vibration"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getCurrentVisibleAnimationView()I

    move-result v4

    if-eq v10, v4, :cond_6

    .line 1876
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_EVT_ENROLL_CAPTURE_STATUS, valid swipe, ENROLL_WAITING_ANIMATION_VIEW not visible, bring it to front"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_5
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0xce

    invoke-virtual {v6, v7, v10, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1879
    :cond_6
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v6, 0xca

    iget v7, v3, Lcom/htc/fingerprintapi/EnrollCaptureStatus;->progress:I

    const/16 v8, 0x12f

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v2           #previousProgress:I
    :cond_7
    move v2, v5

    .line 1863
    goto :goto_1

    .line 1887
    .restart local v2       #previousProgress:I
    :cond_8
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_EVT_ENROLL_CAPTURE_STATUS, invalid swipe, show a fail animation"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getBadImageQualityType(I)I

    move-result v0

    .line 1891
    .local v0, badImageQualityType:I
    packed-switch v0, :pswitch_data_0

    .line 1903
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0x130

    const v8, 0x7f0c0246

    invoke-virtual {p0, v8}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9, v11, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1911
    :goto_2
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0xd0

    invoke-virtual {v6, v7, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1913
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCancelQualityFailAnimTimerTask:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;

    if-eqz v4, :cond_a

    .line 1914
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCancelQualityFailAnimTimerTask:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;

    invoke-virtual {v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->cancel()Z

    .line 1916
    :cond_a
    new-instance v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$1;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCancelQualityFailAnimTimerTask:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;

    .line 1917
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mTimer:Ljava/util/Timer;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCancelQualityFailAnimTimerTask:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mQualityFailAnimDuration:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 1893
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0x130

    const v8, 0x7f0c0240

    invoke-virtual {p0, v8}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9, v11, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1898
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0x130

    const v8, 0x7f0c0243

    invoke-virtual {p0, v8}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9, v11, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1923
    .end local v0           #badImageQualityType:I
    .end local v1           #imgQuality:I
    .end local v2           #previousProgress:I
    .end local v3           #status:Lcom/htc/fingerprintapi/EnrollCaptureStatus;
    :sswitch_1
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v5, "onEvent(): FP_EVT_ENROLL_NEXT_CAPTURE_START "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1927
    :sswitch_2
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v5, "onEvent(): FP_EVT_SENSOR_FINGERPRINT_CAPTURE_START "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1932
    :sswitch_3
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v5, "onEvent(): FP_RESULT_USER_FINGER_ALREADY_ENROLLED "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_b
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1934
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01fc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1935
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v4}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    goto/16 :goto_0

    .line 1944
    :sswitch_4
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_RESULT_OK "

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_c
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1946
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0xce

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1947
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v4}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    goto/16 :goto_0

    .line 1956
    :sswitch_5
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_RESULT_FAILED "

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_d
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEvent(): event.eventData instanceof Integer ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventData:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", event.eventData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventData:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_e
    iget-boolean v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mIsFinishing:Z

    if-nez v4, :cond_f

    .line 1962
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1965
    :cond_f
    iget-object v4, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventData:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_11

    iget-object v4, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventData:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v10, :cond_11

    .line 1967
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_10

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_RESULT_FAILED, event.eventData = HtcFingerprint.FP_RESULT_USER_FINGER_ALREADY_ENROLLED"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_10
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c01fc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1972
    :cond_11
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_RESULT_FAILED before cancel"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_12
    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v4}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    .line 1974
    :cond_13
    sget-boolean v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v4, :cond_14

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v6, "onEvent(): FP_RESULT_FAILED after cancel"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_14
    iput v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I

    goto/16 :goto_0

    .line 1839
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x0 -> :sswitch_4
        0x2 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_2
    .end sparse-switch

    .line 1891
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1298
    const/4 v0, 0x0

    .line 1301
    .local v0, interceptKey:Z
    sparse-switch p1, :sswitch_data_0

    .line 1313
    :goto_0
    if-eqz v0, :cond_1

    .line 1314
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown(): ignoring key press event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    const/4 v1, 0x1

    .line 1318
    :goto_1
    return v1

    .line 1303
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showStopEnrollDialog()V

    .line 1306
    :sswitch_1
    const/4 v0, 0x1

    .line 1307
    goto :goto_0

    .line 1318
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 1301
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1263
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 1268
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->SetAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->bNeedToConfirm:Z

    if-nez v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v0, v1, :cond_2

    .line 1271
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 1276
    :cond_1
    :goto_0
    return-void

    .line 1273
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1257
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    .line 1259
    return-void
.end method

.method protected updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V
    .locals 14
    .parameter "stage"

    .prologue
    .line 728
    iget-object v11, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 729
    .local v11, previousStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 731
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$6;->$SwitchMap$com$android$settings$framework$activity$security$HtcFingerprintEnrollActivity$Stage:[I

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 955
    :cond_0
    :goto_0
    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooter;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCommonBar:Lcom/htc/widget/HtcFooter;

    .line 956
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCommonBar:Lcom/htc/widget/HtcFooter;

    if-eqz v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCommonBar:Lcom/htc/widget/HtcFooter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->ReverseLandScapeSequence(Z)V

    .line 959
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCommonBar:Lcom/htc/widget/HtcFooter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 960
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCommonBar:Lcom/htc/widget/HtcFooter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 963
    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterLeftButton:Landroid/widget/TextView;

    .line 964
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterLeftButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 965
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->leftMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    iget v2, v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 966
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->leftMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    iget-boolean v2, v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 967
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    :cond_2
    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterRightButton:Landroid/widget/TextView;

    .line 972
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterRightButton:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 973
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->rightMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    iget v2, v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 976
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSuccessStage ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v4, :cond_18

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isDemoFlo ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_3
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterRightButton:Landroid/widget/TextView;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v3, :cond_19

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 982
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    :cond_4
    return-void

    .line 733
    :pswitch_0
    const v1, 0x7f0400ee

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setContentView(I)V

    .line 735
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Lcom/htc/widget/HtcEditText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 737
    const v1, 0x7f090207

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 738
    .local v8, fingerprintReaderView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 739
    .local v7, fingerprintReaderDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 740
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 742
    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageTop:Landroid/widget/ImageView;

    .line 743
    const v1, 0x7f090204

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    .line 744
    const v1, 0x7f090205

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    .line 746
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageTop:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 747
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 748
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 750
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageTop:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    .line 751
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    .line 752
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimOffset:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 753
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    .line 754
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimOffset:J

    const-wide/16 v12, 0x2

    mul-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 756
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 757
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 758
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 759
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 763
    .end local v7           #fingerprintReaderDrawable:Landroid/graphics/drawable/Drawable;
    .end local v8           #fingerprintReaderView:Landroid/widget/ImageView;
    :pswitch_1
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mDefaultSelectedFingerIndex:I

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    .line 764
    const v1, 0x7f0400ec

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setContentView(I)V

    .line 765
    const v1, 0x7f0901f2

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeftPalmImageView:Landroid/widget/ImageView;

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 768
    .local v0, palmBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 769
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 771
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 773
    .local v9, flipped:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeftPalmImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 776
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Lcom/htc/widget/HtcEditText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 781
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 788
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    .line 789
    const/4 v10, 0x1

    .local v10, i:I
    :goto_3
    const/16 v1, 0xa

    if-gt v10, v1, :cond_0

    .line 790
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerResIdList:[I

    aget v1, v1, v10

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    aput-object v1, v2, v10

    .line 791
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    if-eqz v1, :cond_5

    .line 793
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mDefaultSelectedFingerIndex:I

    if-ne v1, v10, :cond_6

    .line 794
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    const v2, 0x7f0202a1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 795
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 796
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setClickable(Z)V

    .line 797
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    :goto_4
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setTag(Ljava/lang/Object;)V

    .line 811
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showHintSelectFingerAnimation(Z)V

    .line 789
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 798
    :cond_6
    sget v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->STATUS_ENROLLED:I

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollStatusMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 799
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    const v2, 0x7f0202c7

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 800
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 801
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 802
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setClickable(Z)V

    goto :goto_4

    .line 804
    :cond_7
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    const v2, 0x7f0202c8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 805
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 806
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setClickable(Z)V

    .line 807
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerListImageViews:[Lcom/htc/widget/HtcImageButton;

    aget-object v1, v1, v10

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 819
    .end local v0           #palmBitmap:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v9           #flipped:Landroid/graphics/Bitmap;
    .end local v10           #i:I
    :pswitch_2
    const v1, 0x7f0400eb

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->setContentView(I)V

    .line 821
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Lcom/htc/widget/HtcEditText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 828
    const v1, 0x7f0901f0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    .line 829
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 830
    const/4 v1, -0x1

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->headerMessage:I

    if-ne v1, v2, :cond_e

    .line 831
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    :cond_8
    :goto_5
    const v1, 0x7f0901f1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSecondaryText:Landroid/widget/TextView;

    .line 849
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 850
    const/4 v1, -0x1

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->footerMessage:I

    if-ne v1, v2, :cond_11

    .line 851
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSecondaryText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    :cond_9
    :goto_6
    const v1, 0x7f0901ff

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mStatusAnimLayout:Landroid/widget/FrameLayout;

    .line 867
    const v1, 0x7f090209

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimLayout:Landroid/widget/FrameLayout;

    .line 868
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_14

    .line 869
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 870
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mStatusAnimLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 876
    :goto_7
    const v1, 0x7f09020b

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/widget/HtcChangingDrawableImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mMovingFinger:Lcom/android/settings/framework/widget/HtcChangingDrawableImageView;

    .line 878
    const v1, 0x7f0800ca

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getFingerMovingPathArray(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathX:[F

    .line 879
    const v1, 0x7f0800cb

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getFingerMovingPathArray(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnteringPathY:[F

    .line 881
    const v1, 0x7f0800cc

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getFingerMovingPathArray(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingPathX:[F

    .line 882
    const v1, 0x7f0800cd

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getFingerMovingPathArray(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSwipingPathY:[F

    .line 884
    const v1, 0x7f0800ce

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getFingerMovingPathArray(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingPathX:[F

    .line 885
    const v1, 0x7f0800cf

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getFingerMovingPathArray(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mLeavingPathY:[F

    .line 887
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->DEBUG:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->printPath()V

    .line 889
    :cond_a
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Naming:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-eq v1, v11, :cond_b

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v11, :cond_c

    .line 890
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->startWaitingAnimation()V

    .line 898
    :cond_c
    const v1, 0x7f090200

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    .line 899
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 900
    const/4 v1, -0x1

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->statusImg:I

    if-ne v1, v2, :cond_15

    .line 901
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 919
    :cond_d
    :goto_8
    const v1, 0x7f090201

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusPanel:Landroid/widget/ImageView;

    .line 926
    const v1, 0x7f090202

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    .line 927
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_17

    .line 928
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 938
    :goto_9
    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageTop:Landroid/widget/ImageView;

    .line 939
    const v1, 0x7f090204

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    .line 940
    const v1, 0x7f090205

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    .line 942
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-eq v1, v2, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageTop:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 944
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 945
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 833
    :cond_e
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_f

    .line 834
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerInfoStringIdList:[I

    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0216

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 836
    :cond_f
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_10

    .line 837
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollFingerInfoStringIdList:[I

    iget v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCurrentFingerIndex:I

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 839
    :cond_10
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 853
    :cond_11
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-eq v1, v2, :cond_12

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_13

    .line 854
    :cond_12
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0200

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v12, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mRequiredSamplingTimes:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 856
    :cond_13
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 872
    :cond_14
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mWaitingAnimLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 873
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mStatusAnimLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 903
    :cond_15
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_16

    .line 904
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 905
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->statusImg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 906
    :cond_16
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v1, v2, :cond_d

    .line 907
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 908
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->statusImg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 909
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xd0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    .line 930
    :cond_17
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_9

    .line 976
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 979
    :cond_19
    iget-object v1, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->rightMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->enabled:Z

    goto/16 :goto_2

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
