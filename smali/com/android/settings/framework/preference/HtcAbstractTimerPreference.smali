.class public abstract Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbstractTimerPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# instance fields
.field protected mTimeInterval:I

.field protected mTimer:Landroid/os/Handler;

.field protected mTimerTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimeInterval:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimerTask:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->updateSummary()V

    return-void
.end method


# virtual methods
.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method public final getTimeInterval()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimeInterval:I

    return v0
.end method

.method public final onPause(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->unregisterTimer()V

    return-void
.end method

.method public final onResume(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->registerTimer()V

    return-void
.end method

.method public final registerTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setTimeInterval(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimeInterval:I

    return-void
.end method

.method public final unregisterTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public abstract updateSummary()V
.end method
