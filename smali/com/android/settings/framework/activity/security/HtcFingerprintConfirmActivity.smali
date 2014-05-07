.class public Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcFingerprintConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$2;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;,
        Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;
    }
.end annotation


# static fields
.field public static final CONFIRM_EXISTING_REQUEST:I = 0x37

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FINGERPRINT_SHARED_PREFERENCES:Ljava/lang/String; = "fingerprint_shared_preferences"

.field private static final ID_EMPTY_IMAGE:I = -0x1

.field private static final ID_EMPTY_MESSAGE:I = -0x1

.field private static final KEY_DIRTY_BIT:Ljava/lang/String; = "dirty_bit"

.field private static final KEY_FAIL_COUNT:Ljava/lang/String; = "fingerprint_settings_fail_count"

.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final NON_UI_MESSAGE_CANCEL_VERIFY_OPERATION:I = 0x67

.field private static final NON_UI_MESSAGE_CLEAN_UP_FINGERPRINT_OBJECT:I = 0x66

.field private static final NON_UI_MESSAGE_START_VERIFY:I = 0x64

.field private static final NON_UI_MESSAGE_STOP_VERIFY_AND_EXIT:I = 0x65

.field static final RESULT_FINISHED:I = 0x1

.field private static final START_ANIMATION:I = 0x1

.field private static final STATUS_BAR_BACKGROUND_INDEX:I = 0x0

.field private static final STOP_ANIMATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final UI_MESSAGE_UPDATE_ARROW_ANIMATION:I = 0xc9

.field private static final UI_MESSAGE_UPDATE_CANCEL_ALL_ANIMATION:I = 0xcc

.field private static final UI_MESSAGE_UPDATE_FAILED_ANIMATION:I = 0xcb

.field private static final UI_MESSAGE_UPDATE_STAGE:I = 0xc8

.field private static final UI_MESSAGE_USE_ALT_LOCK:I = 0xca

.field public static final USE_ALT_LOCK_REQUEST:I = 0x58


# instance fields
.field private mAborting:Z

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

.field private mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mConfirmDelMessage:Ljava/lang/String;

.field private mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

.field private mFailColor:I

.field private mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mFailCount:I

.field private mFailedAnimDuration:J

.field private mFailedAnimFillTime:J

.field private mFailedStageDuration:J

.field private mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

.field private mFingerprintStatusFrame:Landroid/widget/ImageView;

.field private mFingerprintStatusImg:Landroid/widget/ImageView;

.field private mIsCanceled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

.field private mPrimaryText:Landroid/widget/TextView;

.field private mSecondaryText:Landroid/widget/TextView;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mThemeCategoryColor:I

.field private mUiHandler:Landroid/os/Handler;

.field private mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

.field private mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    .line 86
    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 118
    const-wide/16 v0, 0x16b

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFadeInDuration:J

    .line 119
    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFadeOutDuration:J

    .line 120
    const-wide/16 v0, 0xa5

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimOffset:J

    .line 121
    const-wide/16 v0, 0x63

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFillTime:J

    .line 122
    const-wide/16 v0, 0x42

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimPauseTime:J

    .line 126
    const-wide/16 v0, 0x84

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    .line 127
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimFillTime:J

    .line 128
    iget-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimFillTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedStageDuration:J

    .line 139
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    .line 143
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    .line 144
    iput-boolean v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    .line 145
    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    .line 146
    iput-boolean v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    .line 159
    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mThemeCategoryColor:I

    .line 160
    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColor:I

    .line 161
    iput-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 162
    iput-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 573
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->startWaitingAnimation(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->useAltLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->showFailAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->cancelAllAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->startVerify()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->stopVerifyAndExit(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->cleanUpFingerprint()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)Lcom/htc/fingerprintapi/HtcFingerprint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    return-object v0
.end method

.method private cancelAllAnimation()V
    .locals 2

    .prologue
    .line 768
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancelAllAnimation():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 773
    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 774
    :cond_5
    return-void
.end method

.method private cleanUpFingerprint()V
    .locals 3

    .prologue
    .line 427
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUpFingerprint(): begin. mFingerprint==null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    .line 430
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cleanUp()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    .line 433
    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpFingerprint(): end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_2
    return-void

    .line 427
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x2

    .line 777
    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 778
    .local v1, fadeInAlphaAnim:Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 779
    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFadeInDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 781
    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 782
    .local v2, fadeOutAlphaAnim:Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 783
    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFillTime:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 784
    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFadeOutDuration:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 786
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 787
    .local v0, animatorSet:Landroid/animation/AnimatorSet;
    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 789
    return-object v0

    .line 777
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 781
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3ct
    .end array-data
.end method

.method private getThemeCategoryColor()I
    .locals 4

    .prologue
    .line 286
    sget-object v2, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 287
    .local v1, ta:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 288
    .local v0, categoryColor:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    return v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 294
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "initView():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    const v0, 0x7f0400f0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->setContentView(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_settings_fail_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    .line 298
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView(): mFailCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 301
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->useAltLock()V

    .line 302
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_2
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setCurrentFailCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 507
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFailCount(): count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_settings_fail_count"

    if-ltz p1, :cond_1

    .end local p1
    :goto_0
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    return-void

    .line 508
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private setupTranslucentStatusBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 271
    const v5, 0x7f090034

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 272
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 273
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 277
    :cond_0
    sget-object v5, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 278
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 279
    .local v0, bgColor:I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 281
    .local v2, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 282
    .local v1, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 283
    return-void
.end method

.method private showFailAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 735
    sget-boolean v7, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v8, "showFailAnimation():"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v9, 0xc9

    invoke-virtual {v8, v9, v11, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 741
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "scaleX"

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 742
    .local v0, fadeInScaleXAnim:Landroid/animation/ValueAnimator;
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "scaleY"

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 744
    .local v1, fadeInScaleYAnim:Landroid/animation/ValueAnimator;
    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 745
    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 746
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 747
    .local v4, failedFadeInAnimation:Landroid/animation/AnimatorSet;
    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v11

    aput-object v1, v7, v12

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 750
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 751
    .local v6, stayAnim:Landroid/animation/ValueAnimator;
    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimFillTime:J

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 754
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "scaleX"

    new-array v9, v10, [F

    fill-array-data v9, :array_3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 755
    .local v2, fadeOutScaleXAnim:Landroid/animation/ValueAnimator;
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "scaleY"

    new-array v9, v10, [F

    fill-array-data v9, :array_4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 756
    .local v3, fadeOutScaleYAnim:Landroid/animation/ValueAnimator;
    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 757
    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 758
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 759
    .local v5, failedFadeOutAnimation:Landroid/animation/AnimatorSet;
    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v3, v7, v12

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 761
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    .line 762
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v4, v8, v11

    aput-object v6, v8, v12

    aput-object v5, v8, v10

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 763
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 764
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 765
    return-void

    .line 741
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 742
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 750
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 754
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
    .end array-data

    .line 755
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
    .end array-data
.end method

.method private startVerify()V
    .locals 6

    .prologue
    .line 513
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "startVerify(): begin:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "startVerify(): before creating an HtcFingerprint instance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    new-instance v1, Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-direct {v1, p0, p0}, Lcom/htc/fingerprintapi/HtcFingerprint;-><init>(Landroid/content/Context;Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    .line 517
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "startVerify(): after creating an HtcFingerprint instance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v1}, Lcom/htc/fingerprintapi/HtcFingerprint;->verify()I

    move-result v0

    .line 520
    .local v0, result:I
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVerify(): result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_3
    if-nez v0, :cond_4

    .line 522
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_4
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 525
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    sget-object v4, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private startWaitingAnimation(Z)V
    .locals 6
    .parameter "start"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 710
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWaitingAnimation(): start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    if-nez p1, :cond_5

    .line 715
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 732
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 711
    goto :goto_0

    :cond_4
    move v0, v2

    .line 712
    goto :goto_1

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    .line 722
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    .line 723
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimOffset:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 724
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    .line 725
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimOffset:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 727
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 728
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 729
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2
.end method

.method private stopVerifyAndExit(I)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 530
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVerifyAndExit(): result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    .line 532
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 537
    if-eq v3, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    if-eqz v0, :cond_2

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    :cond_2
    if-ne v3, p1, :cond_3

    .line 543
    invoke-direct {p0, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->setCurrentFailCount(I)V

    .line 545
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->setResult(I)V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->finish()V

    .line 547
    return-void
.end method

.method private useAltLock()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 488
    sget-boolean v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v3, "useAltLock(): begin:"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->altUnlockMethodExists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    sget-boolean v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v3, "altUnlockMethodExists() == false, no alternative lock available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    :goto_0
    return-void

    .line 493
    :cond_2
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getAltUnlockMethod()I

    move-result v1

    .line 494
    .local v1, quality:I
    sget-boolean v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAltUnlockMethod() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n DevicePolicyManager.PASSWORD_QUALITY_NUMERIC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n DevicePolicyManager.PASSWORD_QUALITY_ALPHABETIC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n DevicePolicyManager.PASSWORD_QUALITY_ALPHANUMERIC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n DevicePolicyManager.PASSWORD_QUALITY_SOMETHING = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n DevicePolicyManager.PASSWORD_QUALITY_COMPLEX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 501
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const/16 v2, 0x58

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 561
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 562
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

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

    .line 564
    :cond_0
    const/16 v0, 0x58

    if-ne v0, p1, :cond_3

    .line 565
    const/4 v0, -0x1

    if-eq v0, p2, :cond_1

    if-nez p2, :cond_2

    .line 566
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 571
    :cond_3
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 796
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animator"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_1

    .line 803
    iget-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimPauseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 804
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    .line 806
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    if-gt v0, v1, :cond_2

    .line 807
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 808
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 819
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 825
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 551
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(): view == footer ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_1

    .line 553
    iput-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    .line 554
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 555
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    :cond_1
    return-void

    .line 551
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 221
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->requestWindowFeature(I)Z

    .line 223
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 227
    const-string v1, "confirm_del"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->setupTranslucentStatusBar()V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getThemeCategoryColor()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mThemeCategoryColor:I

    .line 233
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mThemeCategoryColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColor:I

    .line 235
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 238
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 239
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 240
    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 241
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0205

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 248
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 250
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    if-nez v1, :cond_2

    .line 251
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HtcFingerprintEnrollActivityHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    .line 252
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 253
    new-instance v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    .line 257
    :cond_2
    const-string v1, "fingerprint_shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 258
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dirty_bit"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->initView()V

    .line 261
    return-void

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0204

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 452
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    .line 454
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 455
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 456
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 459
    :cond_1
    return-void
.end method

.method public onEvent(Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/16 v4, 0xc8

    .line 654
    iget v1, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventID:I

    sparse-switch v1, :sswitch_data_0

    .line 704
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event Recd: Unhandled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 656
    :sswitch_0
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onEvent(): FP_EVT_ENROLL_CAPTURE_STATUS "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    :sswitch_1
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onEvent(): FP_EVT_ENROLL_NEXT_CAPTURE_START "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :sswitch_2
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onEvent(): FP_EVT_SENSOR_FINGERPRINT_CAPTURE_START "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :sswitch_3
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onEvent(): FP_RESULT_OK "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 670
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 674
    :sswitch_4
    iget-object v1, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 675
    .local v0, eventData:I
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent(): FP_RESULT_FAILED : eventData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUiStage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAborting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsCanceled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 684
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 685
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 689
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    if-nez v1, :cond_3

    .line 690
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    .line 691
    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->setCurrentFailCount(I)V

    .line 693
    :cond_3
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent(): FP_RESULT_FAILED : mFailCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_4
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    if-le v1, v2, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedStageDuration:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 697
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x64

    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedStageDuration:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 654
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 463
    const/4 v0, 0x0

    .line 466
    .local v0, interceptKey:Z
    sparse-switch p1, :sswitch_data_0

    .line 479
    :goto_0
    if-eqz v0, :cond_1

    .line 480
    sget-boolean v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown(): ignoring key press event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    :goto_1
    return v1

    .line 468
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    .line 469
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->stopVerifyAndExit(I)V

    .line 472
    :sswitch_1
    const/4 v0, 0x1

    .line 473
    goto :goto_0

    .line 484
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 438
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 443
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-eq v0, v1, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 422
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    .line 424
    return-void
.end method

.method protected updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;)V
    .locals 7
    .parameter "stage"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/16 v4, 0x8

    const/4 v3, -0x1

    .line 317
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateStage():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    .line 326
    .local v0, previousStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    .line 328
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$2;->$SwitchMap$com$android$settings$framework$activity$security$HtcFingerprintConfirmActivity$Stage:[I

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 334
    :pswitch_0
    const v1, 0x7f0901f0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    .line 335
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 336
    iget v1, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->headerMessage:I

    if-ne v3, v1, :cond_6

    .line 337
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_2
    :goto_1
    const v1, 0x7f0901f1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSecondaryText:Landroid/widget/TextView;

    .line 347
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 348
    iget v1, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->footerMessage:I

    if-ne v3, v1, :cond_8

    .line 349
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSecondaryText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_3
    :goto_2
    const v1, 0x7f090200

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    .line 361
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 362
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-ne v1, v2, :cond_a

    .line 363
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    if-lt v1, v5, :cond_9

    const v1, 0x7f0202a5

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    :cond_4
    :goto_4
    const v1, 0x7f090202

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    .line 382
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-ne v1, v2, :cond_d

    .line 383
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 396
    :goto_5
    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    .line 397
    const v1, 0x7f090204

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    .line 398
    const v1, 0x7f090205

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    .line 400
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 401
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 402
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 404
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-eq v1, v2, :cond_5

    .line 405
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :cond_5
    const v1, 0x7f09020d

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    .line 412
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0c0201

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 414
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 338
    :cond_6
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 339
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 341
    :cond_7
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 351
    :cond_8
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 363
    :cond_9
    const v1, 0x7f0202a4

    goto/16 :goto_3

    .line 365
    :cond_a
    iget v1, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->statusImg:I

    if-ne v3, v1, :cond_b

    .line 366
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 367
    :cond_b
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-ne v1, v2, :cond_c

    .line 368
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 369
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->statusImg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 371
    :cond_c
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->statusImg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 384
    :cond_d
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-ne v1, v2, :cond_f

    .line 385
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    if-lt v1, v5, :cond_e

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_5

    :cond_e
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_6

    .line 388
    :cond_f
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_5

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
