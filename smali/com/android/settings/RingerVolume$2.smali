.class Lcom/android/settings/RingerVolume$2;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RingerVolume;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolume;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolume;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/settings/RingerVolume$2;->this$0:Lcom/android/settings/RingerVolume;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 408
    invoke-static {}, Lcom/android/settings/RingerVolume;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    const-string v6, "RingerVolume"

    const-string v7, "AudioManager.RINGER_MODE_CHANGED_ACTION"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    iget-object v6, p0, Lcom/android/settings/RingerVolume$2;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/settings/RingerVolume;->access$200(Lcom/android/settings/RingerVolume;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/RingerVolume$2;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/settings/RingerVolume;->access$200(Lcom/android/settings/RingerVolume;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x65

    const-string v9, "android.media.EXTRA_RINGER_MODE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v8, v9, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 414
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 415
    .local v5, streamId:I
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 416
    .local v3, newIndex:I
    const-string v6, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 417
    .local v4, oldIndex:I
    const-string v6, "RingerVolume"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",newIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",oldIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v2, -0x1

    .line 419
    .local v2, nStreamDlgIdx:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-static {}, Lcom/android/settings/RingerVolume;->access$300()[I

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 420
    invoke-static {}, Lcom/android/settings/RingerVolume;->access$300()[I

    move-result-object v6

    aget v6, v6, v1

    if-ne v6, v5, :cond_3

    .line 421
    move v2, v1

    .line 419
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    :cond_4
    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$400()[Z

    move-result-object v6

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_1

    .line 426
    :cond_6
    iget-object v6, p0, Lcom/android/settings/RingerVolume$2;->this$0:Lcom/android/settings/RingerVolume;

    #calls: Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStatesInternal(I)V
    invoke-static {v6, v2}, Lcom/android/settings/RingerVolume;->access$500(Lcom/android/settings/RingerVolume;I)V

    goto :goto_0

    .line 427
    .end local v1           #i:I
    .end local v2           #nStreamDlgIdx:I
    .end local v3           #newIndex:I
    .end local v4           #oldIndex:I
    .end local v5           #streamId:I
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 428
    iget-object v6, p0, Lcom/android/settings/RingerVolume$2;->this$0:Lcom/android/settings/RingerVolume;

    #calls: Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStates()V
    invoke-static {v6}, Lcom/android/settings/RingerVolume;->access$000(Lcom/android/settings/RingerVolume;)V

    goto/16 :goto_0
.end method
