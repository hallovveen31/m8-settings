.class public Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;
.super Landroid/app/DialogFragment;
.source "HtcProtectSdCardPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfirmEnforceFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;->this$0:Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c1045

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x7f0c1046

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment$1;-><init>(Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment$2;-><init>(Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method
