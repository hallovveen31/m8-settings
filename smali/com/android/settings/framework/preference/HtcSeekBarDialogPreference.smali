.class public Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;
.super Lcom/htc/preference/HtcSeekBarDialogPreference;
.source "HtcSeekBarDialogPreference.java"

# interfaces
.implements Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupDialogDismissRelationship;


# instance fields
.field private mExternalOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;->mExternalOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;->mExternalOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;->mExternalOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
