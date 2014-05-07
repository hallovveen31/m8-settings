.class public Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation


# static fields
.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 291
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 312
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$304(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 347
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 349
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 366
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 304
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 306
    return-void
.end method

.method private updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarText;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0c0f2c

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0f2d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 264
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto/16 :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0c0b0e

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_3

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0f2f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 275
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 278
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x2000

    const/4 v7, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v5, v0, Lcom/android/settings/ConfirmLockPattern;

    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 138
    :cond_0
    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 140
    .local v4, view:Landroid/view/View;
    const v5, 0x7f090035

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView;

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 141
    const v5, 0x7f090037

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    .line 144
    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 145
    .local v3, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 148
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 149
    const-string v5, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 150
    const-string v5, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    .line 151
    const-string v5, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 152
    const-string v5, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 156
    :cond_1
    new-instance v5, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 157
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v5, :cond_2

    .line 158
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v5}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 161
    :cond_2
    new-instance v5, Lcom/htc/widget/ActionBarText;

    invoke-direct {v5, v0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 162
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 163
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 164
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v5, v7}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 167
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    .line 168
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v5, v7}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 172
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v5, :cond_5

    .line 173
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 177
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 178
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 179
    sget-object v5, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 181
    if-eqz p3, :cond_7

    .line 182
    const-string v5, "num_wrong_attempts"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 195
    :cond_6
    :goto_0
    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ChooseLockFrameLayout;

    .line 196
    .local v2, mvg:Lcom/android/settings/ChooseLockFrameLayout;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/ChooseLockFrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {v2}, Lcom/android/settings/ChooseLockFrameLayout;->adjustLayout()V

    .line 199
    return-object v4

    .line 188
    .end local v2           #mvg:Lcom/android/settings/ChooseLockFrameLayout;
    :cond_7
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 215
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 222
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 223
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 224
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 229
    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 205
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    return-void
.end method
