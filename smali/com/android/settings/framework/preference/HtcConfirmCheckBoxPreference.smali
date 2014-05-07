.class public abstract Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcConfirmCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;,
        Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;
    }
.end annotation


# instance fields
.field private mConfirmDialog:Landroid/app/Dialog;

.field private mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

.field private mOkClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    sget-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    sget-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    sget-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->initialize()V

    return-void
.end method


# virtual methods
.method protected abstract createConfirmDialog()Landroid/app/Dialog;
.end method

.method public getConfirmDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getConfirmStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->getConfirmStatus()Z

    move-result v0

    return v0
.end method

.method protected abstract initialize()V
.end method

.method protected onClick()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    sget-object v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->showConfirmDialog(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->showConfirmDialog(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->onConfirmed()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->getConfirmStatus()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract onConfirmed()V
.end method

.method public abstract onDenied()V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->getConfirmStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;

    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->isShowing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->showConfirmDialog(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->isShowing:Z

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->isShowing:Z

    goto :goto_0
.end method

.method public setConfirmStatus(Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    :cond_0
    return-void
.end method

.method protected showConfirmDialog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->createConfirmDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->getConfirmStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    :cond_2
    return-void
.end method
