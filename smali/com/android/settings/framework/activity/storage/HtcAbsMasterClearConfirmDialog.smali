.class public abstract Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;
.super Lcom/android/settings/framework/app/HtcInternalDialogFragment;
.source "HtcAbsMasterClearConfirmDialog.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomMessageRes()I
    .locals 1

    const v0, 0x7f0c0ec3

    return v0
.end method

.method protected getCustomNegativeButtonLabelRes()I
    .locals 1

    const v0, 0x2040256

    return v0
.end method

.method protected getCustomPositiveButtonLabelRes()I
    .locals 1

    const v0, 0x2040258

    return v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x2040262

    return v0
.end method

.method protected abstract getErasePhoneStorageOption()Z
.end method

.method protected abstract getEraseSdCardStorageOption()Z
.end method

.method protected onNegativeButtonClick()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onNegativeButtonClick()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPositiveButtonClick()V
    .locals 4

    sget-boolean v1, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "onPositiveButtonClick()"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sd_encryption"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;->getErasePhoneStorageOption()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;->getEraseSdCardStorageOption()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/activity/storage/HtcMasterClearConfirmPatch;->doFactoryDataReset(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method protected supportNegativeButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected supportPositiveButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
