.class public Lcom/android/settings/ChooseLockPatternExample;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "ChooseLockPatternExample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final START_DELAY:J = 0x3e8L

.field protected static final TAG:Ljava/lang/String; = "Settings"


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/view/View;

.field private mNextButton:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSkipButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/android/settings/ChooseLockPatternExample$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPatternExample$1;-><init>(Lcom/android/settings/ChooseLockPatternExample;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockPatternExample;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f0c0087

    const v1, 0x7f0c0088

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ChooseLockPatternExample;->initButton(II)V

    .line 104
    return-void
.end method

.method private initButton(II)V
    .locals 1
    .parameter "leftStrId"
    .parameter "rightStrId"

    .prologue
    .line 111
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 117
    :cond_0
    const v0, 0x7f0900b9

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 125
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternExample;->initButton()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    const v1, 0x7f020196

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 89
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternExample;->setResult(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04005e

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternExample;->initViews()V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 60
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 95
    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 99
    :cond_0
    return-void
.end method
