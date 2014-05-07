.class public Lcom/android/settings/MasterClearConfirm;
.super Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;
.source "MasterClearConfirm.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseInternalSdCard:Z

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseInternalSdCard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    return v0
.end method


# virtual methods
.method protected getErasePhoneStorageOption()Z
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.intent.extra.erase_internal_sd_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getEraseSdCardStorageOption()Z
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.intent.extra.erase_external_sd_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClearConfirmDialog;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "com.htc.intent.extra.erase_external_sd_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 132
    if-eqz v0, :cond_0

    const-string v1, "com.htc.intent.extra.erase_internal_sd_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseInternalSdCard:Z

    .line 134
    return-void

    :cond_1
    move v1, v2

    .line 130
    goto :goto_0
.end method
