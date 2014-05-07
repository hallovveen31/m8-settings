.class public Lcom/android/settings/inputmethod/HtcToggleSwitch;
.super Lcom/htc/widget/HtcToggleButtonLight;
.source "HtcToggleSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitch;->mOnBeforeListener:Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitch;->mOnBeforeListener:Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/inputmethod/HtcToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitch;->mOnBeforeListener:Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;

    return-void
.end method
