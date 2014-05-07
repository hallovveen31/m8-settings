.class Lcom/android/settings/SoundSettings$5;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mIsPause:Z
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    const-string v1, "SoundSettings"

    const-string v2, "queueIdle -- activity paused"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v1}, Lcom/android/settings/SoundSettings;->UpdateCustomizeProfileEntry()V

    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    const/4 v2, 0x1

    #calls: Lcom/android/settings/SoundSettings;->updateState(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/SoundSettings;->access$600(Lcom/android/settings/SoundSettings;Z)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->updateHapticFeedback()V
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$2100(Lcom/android/settings/SoundSettings;)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$2200(Lcom/android/settings/SoundSettings;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.soundprofile.profile_switched"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.soundprofile.profile_compare_done"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings$5;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$2300(Lcom/android/settings/SoundSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    const-string v3, "com.htc.permission.APP_PLATFORM"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method
