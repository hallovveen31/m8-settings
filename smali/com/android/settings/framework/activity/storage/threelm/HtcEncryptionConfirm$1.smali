.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;
.super Ljava/lang/Object;
.source "HtcEncryptionConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->decrypt(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 67
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, password:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$3;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    invoke-static {v2}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v5, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 107
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v1, v2, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->encrypt(Ljava/lang/String;Z)V

    .line 79
    :goto_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "encryption_ui_enabled"

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v3}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "encryption_ui_enabled"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->decrypt(Ljava/lang/String;Z)V

    goto :goto_2

    .line 86
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v1, v2, :cond_2

    .line 87
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->encrypt(Ljava/lang/String;Z)V

    .line 92
    :goto_3
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "encryption_ui_enabled"

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v3}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "encryption_ui_enabled"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->decrypt(Ljava/lang/String;Z)V

    goto :goto_3

    .line 98
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->encrypt(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
