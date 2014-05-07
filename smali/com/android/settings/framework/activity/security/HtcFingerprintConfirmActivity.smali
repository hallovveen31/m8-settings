.class public Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcFingerprintConfirmActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;


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

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    const-wide/16 v0, 0x16b

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFadeInDuration:J

    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFadeOutDuration:J

    const-wide/16 v0, 0xa5

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimOffset:J

    const-wide/16 v0, 0x63

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFillTime:J

    const-wide/16 v0, 0x42

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimPauseTime:J

    const-wide/16 v0, 0x84

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimFillTime:J

    iget-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimFillTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedStageDuration:J

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    iput-boolean v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mThemeCategoryColor:I

    iput v4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColor:I

    iput-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->startWaitingAnimation(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->useAltLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->showFailAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->cancelAllAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->startVerify()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->stopVerifyAndExit(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->cleanUpFingerprint()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)Lcom/htc/fingerprintapi/HtcFingerprint;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    return-object v0
.end method

.method private cancelAllAnimation()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancelAllAnimation():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    return-void
.end method

.method private cleanUpFingerprint()V
    .locals 3

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

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpFingerprint(): end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;
    .locals 6

    const/4 v5, 0x2

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFadeInDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFillTime:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimFadeOutDuration:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3ct
    .end array-data
.end method

.method private getThemeCategoryColor()I
    .locals 4

    sget-object v2, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private initView()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "initView():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f0400f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_settings_fail_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

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

    :cond_1
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->useAltLock()V

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;)V

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setCurrentFailCount(I)V
    .locals 3

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

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_settings_fail_count"

    if-ltz p1, :cond_1

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private setupTranslucentStatusBar()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    const v5, 0x7f090034

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    sget-object v5, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method

.method private showFailAnimation()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    sget-boolean v7, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v8, "showFailAnimation():"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v9, 0xc9

    invoke-virtual {v8, v9, v11, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "scaleX"

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "scaleY"

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v11

    aput-object v1, v7, v12

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimFillTime:J

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "scaleX"

    new-array v9, v10, [F

    fill-array-data v9, :array_3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    const-string v8, "scaleY"

    new-array v9, v10, [F

    fill-array-data v9, :array_4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedAnimDuration:J

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v3, v7, v12

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v4, v8, v11

    aput-object v6, v8, v12

    aput-object v5, v8, v10

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
    .end array-data
.end method

.method private startVerify()V
    .locals 6

    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "startVerify(): begin:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "startVerify(): before creating an HtcFingerprint instance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-direct {v1, p0, p0}, Lcom/htc/fingerprintapi/HtcFingerprint;-><init>(Landroid/content/Context;Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "startVerify(): after creating an HtcFingerprint instance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;

    invoke-virtual {v1}, Lcom/htc/fingerprintapi/HtcFingerprint;->verify()I

    move-result v0

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

    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    const/16 v2, 0x8

    const/4 v1, 0x0

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

    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetTop:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetMiddle:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimOffset:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->createAnimatorSet(Ljava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAnimatorSetBottom:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimOffset:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

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

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2
.end method

.method private stopVerifyAndExit(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

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

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eq v3, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    if-ne v3, p1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->setCurrentFailCount(I)V

    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private useAltLock()V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v3, "useAltLock(): begin:"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->altUnlockMethodExists()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v3, "altUnlockMethodExists() == false, no alternative lock available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getAltUnlockMethod()I

    move-result v1

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

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x58

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalActivity;->onActivityResult(IILandroid/content/Intent;)V

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

    :cond_0
    const/16 v0, 0x58

    if-ne v0, p1, :cond_3

    const/4 v0, -0x1

    if-eq v0, p2, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowAnimPauseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmFailedAnimation:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

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

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

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

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "confirm_del"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->setupTranslucentStatusBar()V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->getThemeCategoryColor()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mThemeCategoryColor:I

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mThemeCategoryColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColor:I

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0205

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HtcFingerprintEnrollActivityHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    :cond_2
    const-string v1, "fingerprint_shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dirty_bit"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->initView()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0204

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method public onEvent(Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;)V
    .locals 6

    const/16 v4, 0xc8

    iget v1, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventID:I

    sparse-switch v1, :sswitch_data_0

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

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onEvent(): FP_EVT_ENROLL_CAPTURE_STATUS "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onEvent(): FP_EVT_ENROLL_NEXT_CAPTURE_START "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onEvent(): FP_EVT_SENSOR_FINGERPRINT_CAPTURE_START "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onEvent(): FP_RESULT_OK "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_4
    iget-object v1, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mIsCanceled:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->setCurrentFailCount(I)V

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

    :cond_4
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedStageDuration:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x64

    iget-wide v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailedStageDuration:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

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

    :cond_0
    :goto_1
    return v1

    :sswitch_0
    iput-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mAborting:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->stopVerifyAndExit(I)V

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

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

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mNonUiHandler:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    return-void
.end method

.method protected updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/16 v4, 0x8

    const/4 v3, -0x1

    sget-boolean v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateStage():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$2;->$SwitchMap$com$android$settings$framework$activity$security$HtcFingerprintConfirmActivity$Stage:[I

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const v1, 0x7f0901f0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->headerMessage:I

    if-ne v3, v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const v1, 0x7f0901f1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSecondaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->footerMessage:I

    if-ne v3, v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSecondaryText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    const v1, 0x7f090200

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-ne v1, v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailCount:I

    if-lt v1, v5, :cond_9

    const v1, 0x7f0202a5

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_4
    const v1, 0x7f090202

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFailColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_5
    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    const v1, 0x7f090204

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    const v1, 0x7f090205

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mArrowImageBottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const v1, 0x7f09020d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0c0201

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUseAltLockFooterButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mConfirmDelMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_9
    const v1, 0x7f0202a4

    goto/16 :goto_3

    :cond_a
    iget v1, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->statusImg:I

    if-ne v3, v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_b
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->statusImg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_c
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusImg:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->statusImg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_d
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-ne v1, v2, :cond_f

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

    :cond_f
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprintStatusFrame:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mCategoryColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
