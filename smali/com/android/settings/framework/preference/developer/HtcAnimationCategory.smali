.class public Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "HtcAnimationCategory.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final ANIMATOR_DURATION_SCALE:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRANSITION_ANIMATION_SCALE:I = 0x1

.field private static final WINDOW_ANIMATION_SCALE:I


# instance fields
.field private mAnimation:Lcom/android/settings/framework/preference/display/HtcAnimationPreference;

.field private mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

.field private mContext:Landroid/content/Context;

.field private mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

.field private mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->initial(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->initial(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    return-void
.end method

.method private createAnimationPreference()V
    .locals 2

    new-instance v0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;

    iget-object v1, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimation:Lcom/android/settings/framework/preference/display/HtcAnimationPreference;

    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimation:Lcom/android/settings/framework/preference/display/HtcAnimationPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimation:Lcom/android/settings/framework/preference/display/HtcAnimationPreference;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    return-void
.end method

.method private createAnimatorDurationPreference()V
    .locals 6

    const v5, 0x7f0c120d

    new-instance v3, Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08004e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08004f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    return-void
.end method

.method private createTransitionAnimationPreference()V
    .locals 6

    const v5, 0x7f0c120c

    new-instance v3, Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08004c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08004d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    return-void
.end method

.method private createWindowAnimationPreference()V
    .locals 6

    const v5, 0x7f0c120b

    new-instance v3, Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08004a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08004b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    return-void
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V

    return-void
.end method

.method private updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpg-float v4, v1, v2

    if-gtz v4, :cond_3

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    invoke-virtual {p2}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_animation_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimation:Lcom/android/settings/framework/preference/display/HtcAnimationPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_animation_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimation:Lcom/android/settings/framework/preference/display/HtcAnimationPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    invoke-virtual {p2}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method private writeAnimationScaleOption(ILcom/htc/preference/HtcListPreference;Ljava/lang/Object;)V
    .locals 5

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object v3, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->TAG:Ljava/lang/String;

    const-string v4, "Illegal animation parameter!!"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "htc_window_animation_scale"

    :goto_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    iget-object v3, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :pswitch_1
    const-string v0, "htc_transition_animation_scale"

    goto :goto_1

    :pswitch_2
    const-string v0, "htc_animator_duration_scale"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method initial(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p1, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mContext:Landroid/content/Context;

    const v0, 0x7f0c092e

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->createAnimationPreference()V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->createWindowAnimationPreference()V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->createTransitionAnimationPreference()V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->createAnimatorDurationPreference()V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->writeAnimationScaleOption(ILcom/htc/preference/HtcListPreference;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->writeAnimationScaleOption(ILcom/htc/preference/HtcListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v2, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimatorDurationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->writeAnimationScaleOption(ILcom/htc/preference/HtcListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->mAnimation:Lcom/android/settings/framework/preference/display/HtcAnimationPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->updateAnimationScaleOptions()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;->updateAnimationScaleOptions()V

    return-void
.end method
