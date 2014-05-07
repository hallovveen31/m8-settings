.class public Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
.super Lcom/android/settings/framework/widget/HtcToggleButton;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleSwitch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 318
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    .line 335
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 322
    return-void
.end method
