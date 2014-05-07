.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;
.super Ljava/lang/Object;
.source "HtcEncryptionConfirm.java"

# interfaces
.implements Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;


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
    .line 146
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageStateChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$400(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #calls: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->updateButtonEnabledState(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    invoke-static {v0, p1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$500(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    goto :goto_0
.end method
