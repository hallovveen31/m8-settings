.class Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment$1;
.super Ljava/lang/Object;
.source "HtcProtectSdCardPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment$1;->this$1:Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment$1;->this$1:Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;

    iget-object v0, v0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;->this$0:Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment$1;->this$1:Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;

    iget-object v0, v0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;->this$0:Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;

    #calls: Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateToDataSourceInBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->access$000(Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;Z)V

    return-void
.end method
